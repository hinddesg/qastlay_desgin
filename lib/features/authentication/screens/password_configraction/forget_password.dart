import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:qastlay/utils/validators/validation.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                /// Headings
                Text(CustomTexts.forgetPasswordTitle, style: Theme.of (context).textTheme.headlineMedium),
              const SizedBox (height: CustomSizes.spaceBtwItems),
              Text(CustomTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
              const SizedBox (height: CustomSizes.spaceEtwSections * 2),
            /// Text field
              Form(
                key: controller.forgetPasswordFormKey,
                child: TextFormField(
                  controller: controller.email,
                  validator: CustomValidation.validateEmail,
                  decoration: const InputDecoration (labelText: CustomTexts.email, prefixIcon: Icon (Iconsax.direct_right)), ),
              ),
               const SizedBox(height: CustomSizes.spaceEtwSections),
           /// Submit Button
               SizedBox(
                 width: double.infinity,
                 child: ElevatedButton(
                     onPressed: ()=> controller.sendPasswordResetEmail(),
                         child: const Text (CustomTexts.forgetPassword)
                     )
              ),
               const SizedBox (height: CustomSizes.spaceEtwSections * 2),
                ],
                ),
              ),
        ),
    );
  }
}
