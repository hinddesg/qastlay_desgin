import 'package:get/get.dart';

import '../models/home_view_model.dart';

class HomeController extends GetxController {
  final HomeViewModel controller = Get.put(HomeViewModel());
  static HomeController get instance => Get.find();
  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator (index) {
    carousalCurrentIndex.value = index;

  }

}