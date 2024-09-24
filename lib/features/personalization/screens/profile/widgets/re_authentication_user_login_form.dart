import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/personalization/controllers/user_controller.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import 'package:qastlay/utils/constants/text_strings.dart';
import 'package:qastlay/utils/validators/validation.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: AppBar(title: const Text('Re-Authenticate User')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /// Email
              TextFormField(
                controller: controller.verifyEmail,
                validator: CustomValidation.validateEmail,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: CustomTexts.email),
              ),

              const SizedBox(height: CustomSizes.spaceBtwInputFields),

              /// Password
              Obx(
                () => TextFormField(
                  obscureText: controller.hidePassword.value,
                  controller: controller.verifyPassword,
                  validator: (value) =>
                      CustomValidation.validateEmptyText('Password', value),
                  decoration: InputDecoration(
                    labelText: CustomTexts.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: const Icon(Iconsax.eye_slash),
                    ),
                  ),
                ),
              ), // Obx

              const SizedBox(height: CustomSizes.spaceEtwSections),

              /// LOGIN Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>
                        controller.reAuthenticateEmailAndPasswordUser(),
                    child: const Text('Verify')),
              ), // SizedBox
            ]),
          ),
        ),
      ),
    );
  }
}
