import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qastlay/data/repositories/authentication/repositories_authentication.dart';
import 'package:qastlay/data/repositories/user/user_repositories.dart';
import 'package:qastlay/features/authentication/models/user_models.dart';
import 'package:qastlay/features/authentication/screens/signup/verify_email.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import 'package:qastlay/utils/network/network.dart';
import 'package:qastlay/utils/popups/full_screen_loader.dart';
import 'package:qastlay/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs;
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>(); // Form key for form validation

  /// -- SIGNUP

  void signup() async {
    try {
        // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', CustomImages.docerAnimation);
      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }
        // Form Validation
      if (!signupFormkey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
        // Privacy Policy Check
        // Register user in the Firebase Authentication & Save user data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

    // Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

    // Show Success Message
      TLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue.');

    // Move to Verify Email Screen
      Get.to(() =>  VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Show some Generic Error to the user
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'On Snap', message: e.toString());
    }

  }
}
