import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/authentication/screens/login/login.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton( onPressed:()=>Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(CustomImages.onBoardingImage1),
                width: CustomHelperFunctions.screenWidth() * 0.7,
              ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              ///Title $ SubTitle
              Text(CustomTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium ,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text('support@coding.com',
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
                  child: ElevatedButton(onPressed:() => Get.to(()=>SuccessScreen(
                    image: CustomImages.onBoardingImage2,
                    title: CustomTexts.sighupTitle,
                    subTitle: CustomTexts.confirmEmailSubTitle,
                    onPressed: () => Get.to(()=> const LoginScreen()), buttonText:CustomTexts.createAccount,
                  )),
                    child: const Text( CustomTexts.resendEmail)
                  )),
                 const SizedBox(height: CustomSizes.spaceBtwItems),
                 SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed: (){}, child: const Text( CustomTexts.resendEmail))
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
