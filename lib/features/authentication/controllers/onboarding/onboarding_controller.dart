import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'onboarding_controller.dart';
import 'package:qastlay/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex =0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) {
   currentPageIndex.value = index;
  }

  /// Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      if(kDebugMode){
        print('================== GET STATED NEXT BUTTON===================');
        print(storage.read('IsFirstTime'));
      }

      storage.write('IsFirstTime', false);

      if(kDebugMode){
        print('================== GET STATED NEXT BUTTON===================');
        print(storage.read('IsFirstTime'));
      }

      Get.offAll(const LoginScreen());
    }else{
     int page = currentPageIndex.value + 1;
     pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    Get.offAll(const LoginScreen());
     // currentPageIndex.value = 2; //because we have 3 screen start from 0 1 2
    // pageController.jumpToPage(LoginScreen());
  }

}