import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/functions/helper_function.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(CustomImages.onBoardingImage3 ),
                width: CustomHelperFunctions.screenWidth() * 0.7
              ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              ///Title $ SubTitle
              Text(CustomTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium , textAlign: TextAlign.center,),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Text(CustomTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium , textAlign: TextAlign.center,),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              ///Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed:(){}, child:  const Text(CustomTexts.createAccount))
              ),
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
