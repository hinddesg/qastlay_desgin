import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:qastlay/features/shop/models/product_model.dart';

import '../../../utils/service/home_services.dart';
import 'category_model.dart';

final HomeViewModel controller = Get.put(HomeViewModel());

class HomeViewModel extends GetxController {

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);
  // Getter for the category model
  List<CategoryModel> get categoryModel => _categoryModel;
  final List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  final List<ProductModel> _productModel = [];

  // Reference to the Firestore collection
  final CollectionReference _categoryCollectionRef =
  FirebaseFirestore.instance.collection('Categories');

  // Constructor to get the categories when the ViewModel is initialized
  HomeViewModel() {
    getCategory();
    getBestSellingProducts();
  }

  // Method to fetch categories from Firestore
  getCategory() async {
    _loading.value = true;
   await _categoryCollectionRef.get().then((value) {
      for (int i = 0; i < value.docs.length; i++) {
        // Cast the data to Map<String, dynamic>
        final data = value.docs[i].data() as Map<String, dynamic>;

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
      HomeService().getBestSelling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(ProductModel.fromJson(value[i].data()as Map<String, dynamic>));
        _loading.value = false;
      }
        print(_productModel.length);
      update();
    });
  }
}
