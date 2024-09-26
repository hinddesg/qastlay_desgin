import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/authentication/controllers/login/login_controller.dart';
import 'package:qastlay/features/authentication/screens/password_configraction/forget_password.dart';
import 'package:qastlay/utils/validators/validation.dart';
 import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceEtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => CustomValidation.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: CustomTexts.email,
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields),

            /// Password
            Obx(
                  () => TextFormField(
                    controller: controller.password,
                    validator: (value) => CustomValidation.validatePassword(value),
                    obscureText: controller.hidePassword.value,
                    decoration: InputDecoration(
                    labelText: CustomTexts.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                    !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     /// Remember Me
            //     Row(
            //       children: [
            //         Obx(
            //               () => Checkbox(
            //             value: controller.rememberMe.value,
            //             onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
            //           ),
            //         ),
            //         const Text(CustomTexts.rememberMe),
            //       ],
            //     ),
            //
            //     /// Forget Password
            //     TextButton(
            //       onPressed: () => Get.to(() => const ForgetPassword()),
            //       child: const Text(CustomTexts.forgetPassword),
            //     ),
            //   ],
            // ),
            const SizedBox(height: CustomSizes.spaceBtwItems),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(CustomTexts.signIn),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(CustomTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


