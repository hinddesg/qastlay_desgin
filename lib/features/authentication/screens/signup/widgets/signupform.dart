import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/authentication/controllers/signup/signup_controller.dart';
import 'package:qastlay/utils/validators/validation.dart';
import '../../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/functions/helper_function.dart';
import '../verify_email.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
       key: controller.signupFormkey,
        child: Column(
      children: [
        Row(
          children: [
            ///firstName
            Expanded(
              child: TextFormField(
                validator: (value)=>CustomValidation.validateEmptyText('First name', value),
                controller: controller.firstName,
                decoration: const InputDecoration(
                    labelText: CustomTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
                expands: false,
              ),
            ),
            const SizedBox(width: CustomSizes.spaceBtwInputFields),

            ///lastname
            Expanded(
              child: TextFormField(
                controller: controller.lastName,
                validator: (value)=>CustomValidation.validateEmptyText('Last name', value),
                decoration: const InputDecoration(
                    labelText: CustomTexts.LastName,
                    prefixIcon: Icon(Iconsax.user)),
                expands: false,
              ),
            ),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///username
        TextFormField(
          controller: controller.username,
          validator: (value)=>CustomValidation.validateEmptyText('Username', value),
          decoration: const InputDecoration(
              labelText: CustomTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
          expands: false,
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///email
        TextFormField(
          controller: controller.email,
          validator: (value)=>CustomValidation.validateEmail(value),
          decoration: const InputDecoration(
              labelText: CustomTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///phone number
        TextFormField(
          controller: controller.phoneNumber,
          validator: (value)=>CustomValidation.validatePhoneNumber(value),
          decoration: const InputDecoration(
              labelText: CustomTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///password
        Obx(
          ()=> TextFormField(
            controller: controller.password,
            obscureText: controller.hidePassword.value,
            validator: (value)=>CustomValidation.validatePassword( value),
            decoration: InputDecoration(
                labelText: CustomTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                onPressed :() => controller.hidePassword.value =!controller.hidePassword.value,
                icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash :Iconsax.eye),
                )
            ),
          ),
        ),
        const SizedBox(height: CustomSizes.spaceEtwSections),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(CustomTexts.createAccount))),
        const SizedBox(height: CustomSizes.spaceEtwSections),

        /// Divider
        const FormDivider(
          dividerText: CustomTexts.orSignInWith,
        ),

        /// Footer
        const SizedBox(height: CustomSizes.spaceEtwSections),
        const SocialButtons()
      ],
    ));
  }
}
//Get.to(()=> const VerifyEmailScreen()