import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qastlay/data/repositories/authentication/repositories_authentication.dart';
import 'package:qastlay/features/personalization/controllers/user_controller.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import 'package:qastlay/utils/network/network.dart';
import 'package:qastlay/utils/popups/full_screen_loader.dart';
import 'package:qastlay/utils/popups/loaders.dart';

class LoginController extends GetxController {

  /// Variables
  final rememberMe = false.obs;
  final hidePassword = false.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    // email.text = localStorage.read('REMEMBER_ME_EMAIL');
    // password.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  /// Email & Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', CustomImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using Email & Password Authentication
      final userCredentails = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  /// -- Google SignIn Authentication
  Future<void> googleSignIn() async {
    try {
    // Start Loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', CustomImages.docerAnimation);
    // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // Google Authentication
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      //save user record
      await userController.saveUserRecord(userCredentials);
      //remove loader
      TFullScreenLoader.stopLoading();
      //Redirect
      AuthenticationRepository.instance.screenRedirect();

    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar (title: 'Oh Snap', message: e.toString());
    }
  }

}