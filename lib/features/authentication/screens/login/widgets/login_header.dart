import 'package:flutter/material.dart';
import 'package:qastlay/utils/constants/image_strings.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/functions/helper_function.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Image(
            height: 120,
              image: AssetImage(dark ? CustomImages.darkAppLogo : CustomImages.lightAppLogo)
              // image: AssetImage(CustomImages.facebook)
          ),
          const SizedBox(height: CustomSizes.lg),
          Text(CustomTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium ,),
          const SizedBox(height: CustomSizes.md),
          Text(CustomTexts.loginSubTitle,
              style: Theme.of(context).textTheme.bodyMedium),
        ]);
  }
}

