import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/shop/models/product_model.dart';
import 'package:qastlay/features/shop/models/wishlist_model.dart';
import '../../../data/dummy_data.dart';
import '../../../utils/service/home_services.dart';
import 'cart_model.dart';
import 'category_model.dart';

final HomeViewModel controller = Get.put(HomeViewModel());


class HomeViewModel extends GetxController {
  // Constructor to get the categories when the ViewModel is initialized
  HomeViewModel() {
    getCategory();
    getBestSellingProducts();
  }
  final hideHeart = true.obs;

  ValueNotifier<bool> get loading => _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);
  // Getter for the category model
  List<CategoryModel> get categoryModel => _categoryModel;
  final List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  final List<ProductModel> _productModel = [];

  // List<ProductModel> get cartModel => _cartModel;
  // final List<ProductModel> _cartModel = [];

  // Method to fetch categories from Firestore
  getCategory() async {
    _loading.value = true;
    // add some delay to show the loading indicator
    await Future.delayed(const Duration(seconds: 2));
    //! Dummy data
    _categoryModel.addAll(TDummyData.categories);
    _loading.value = false;
    update();
    return;
    await _categoryCollectionRef.get().then((value) {
      for (int i = 0; i < value.docs.length; i++) {
        // Cast the data to Map<String, dynamic>
        final data = value.docs[i].data();

        // Add the CategoryModel to the list
        _categoryModel.add(CategoryModel.fromJson(data));
        // print(_categoryModel.length);
        _loading.value = false;
      }
      // Update the state in GetX
      update();
    }).catchError((error) {
      print("Error getting categories: $error");
    });
  }

  getBestSellingProducts() async {
    _loading.value = true;
    // add some delay to show the loading indicator
    await Future.delayed(const Duration(seconds: 2));
    //! Dummy data
    // _productModel.addAll(TDummyData.products);
    _loading.value = false;
    update();
    return;
    HomeService().getBestSelling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(
            ProductModel.fromJson(value[i].data() as Map<String, dynamic>));
        _loading.value = false;
        update();
      }
      print(_productModel.length);
      update();
    });
  }

  var cartItems = <CartItemModel>[].obs; // Observable cart list

  // Add a product to the cart
  void addToCart(ProductModel product) {
    var index = cartItems.indexWhere((item) => item.product.id == product.id);
    if (index == -1) {
      // If the product is not in the cart, add it
      cartItems.add(CartItemModel(product: product));
      update(); // Update the state
    } else {
      // If the product is already in the cart, increase the quantity
      cartItems[index].quantity++;
      cartItems.refresh(); // Refresh the UI
      update(); // Update the state
    }
  }

  // Remove a product from the cart
  void removeFromCart(ProductModel product) {
    cartItems.removeWhere((item) => item.product.id == product.id);
  }

  // Update the quantity of a product
  void updateQuantity(ProductModel product, int quantity) {
    var index = cartItems.indexWhere((item) => item.product.id == product.id);
    if (index != -1) {
      cartItems[index].quantity = quantity;
      cartItems.refresh(); // Refresh the UI
      update(); // Update the state
    }
  }

// Get total price
  double get totalPrice {
    return cartItems.fold(0, (pre, item) => pre + (item.totalPrice));
  }

  RxInt selectedMothPlan = 1.obs;
  RxString selectedMothName = ''.obs;
  void updateMonthName() {
    selectedMothName.value = '${selectedMothPlan.value} Month';
  }

  void updatePlan(int month) {
    selectedMothPlan.value = month;
  }

  RxDouble get totalPriceAfterInstallment {
    return (totalPrice / selectedMothPlan.value).obs;
  }


  // Reference to the Firestore collection
  final _categoryCollectionRef =
  FirebaseFirestore.instance.collection('Categories');





  List<ProductModel> productsModel = [ ]; // List of products
  RxList<ProductModel> favoriteItems = <ProductModel>[].obs; // List of favorite items

  // Add to favorite
  void addToFavorite(ProductModel product) {
    if (!favoriteItems.contains(product)) {
      favoriteItems.add(product);
    }
  }

  // Remove from favorite
  void removeFromFavorite(ProductModel product) {
    favoriteItems.remove(product);
  }
  // Check if product is in wishlist
  bool isFavorite(ProductModel product) {
    return favoriteItems.contains(product);
  }
}


