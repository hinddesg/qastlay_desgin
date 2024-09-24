import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/data/repositories/authentication/repositories_authentication.dart';
import 'package:qastlay/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton( onPressed:() => AuthenticationRepository.instance.logout(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(CustomImages.sendEmail),
                width: CustomHelperFunctions.screenWidth() * 0.7,
              ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              ///Title $ SubTitle
              Text(CustomTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium ,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text(email??'',
                style: Theme.of(context).textTheme.labelLarge ,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text(CustomTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium ,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              ///Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed:() => controller.checkEmailVerificationStatus(),
                    child: const Text( CustomTexts.tContinue)
                  )),
                 const SizedBox(height: CustomSizes.spaceBtwItems),
                 SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed:() => controller.sendEmailVerification(), child: const Text( CustomTexts.resendEmail))
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
