import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:qastlay/data/repositories/user/user_repositories.dart';
import 'package:qastlay/features/personalization/controllers/user_controller.dart';
import 'package:qastlay/features/personalization/screens/profile/profile.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import 'package:qastlay/utils/network/network.dart';
import 'package:qastlay/utils/popups/full_screen_loader.dart';
import 'package:qastlay/utils/popups/loaders.dart';

/// Controller to manage user-related functionality.

class UpdateNameController extends GetxController {

  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();

  final lastName = TextEditingController();

  final userController = UserController.instance;

  final userRepository = Get.put(UserRepository());

  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  /// init user data when Home Screen appears

  @override
  void onInit() {
    initializeNames();

    super.onInit();
  }

  /// Fetch user record

  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are updating your information...', CustomImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Update user's first & last name in the Firebase Firestore
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };

      await userRepository.updateSingleField(name);

      // Update the Rx User value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

// Renove Loader
      TFullScreenLoader.stopLoading();

// Show Success Message
      TLoaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated.');

// Move to previous screen.
      Get.off(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}