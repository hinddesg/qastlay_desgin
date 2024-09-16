import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
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
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            ///firstName
            Expanded(
              child: TextFormField(
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
                decoration: const InputDecoration(
                    labelText: CustomTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
                expands: false,
              ),
            ),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///username
        TextFormField(
          decoration: const InputDecoration(
              labelText: CustomTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
          expands: false,
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///email
        TextFormField(
          decoration: const InputDecoration(
              labelText: CustomTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///phone number
        TextFormField(
          decoration: const InputDecoration(
              labelText: CustomTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: CustomSizes.spaceBtwInputFields),

        ///password
        TextFormField(
          decoration: const InputDecoration(
              labelText: CustomTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: CustomSizes.spaceEtwSections),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(()=> const VerifyEmailScreen()),
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
