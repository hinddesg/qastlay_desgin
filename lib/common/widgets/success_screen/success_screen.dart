import 'package:flutter/material.dart';
import 'package:qastlay/common/styles/spacing_styles.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/functions/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
     required this.subTitle,
    required this.onPressed,
     // this.buttonText
  });

  final String image, title, subTitle;
  // final String? buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            ///Image
            Image(
              image:  AssetImage(image),
              width: CustomHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: CustomSizes.spaceEtwSections),

            ///Title $ SubTitle
            Text(title, style: Theme.of(context).textTheme.headlineMedium , textAlign: TextAlign.center,),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            Text(subTitle, style: Theme.of(context).textTheme.labelMedium , textAlign: TextAlign.center,),
            const SizedBox(height: CustomSizes.spaceEtwSections),

            ///Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed:onPressed, child:  const Text('Continue'))
            ),
          ],
        ),
        ),
      ),
    );
  }

}
