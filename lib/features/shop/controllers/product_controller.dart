// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//
// import '../../../utils/constants/firebase.dart';
// import '../models/product_model.dart';
//
// class ProductController extends GetxController {
//   static ProductController instance = Get.find();
//   RxList<ProductModel> products = RxList<ProductModel>([]);
//   String collection = "Products";
//
//   @override
//   onReady() {
//     super.onReady();
//     products.bindStream(getAllProducts());
//   }
//
//   Stream<List<ProductModel>> getAllProducts() =>
//       firebaseFirestore.collection(collection).snapshots().map((query) =>
//           query.docs.map((item) => ProductModel.fromMap(item.data())).toList());
//
// }
