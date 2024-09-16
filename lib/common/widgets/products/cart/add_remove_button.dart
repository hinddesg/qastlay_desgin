import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
          children: [
            /// Add Remove Buttons
            CircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: CustomSizes.md,
              color: CustomHelperFunctions.isDarkMode(context) ? CustomColors.white: CustomColors.black,
              backgroundColor: CustomHelperFunctions.isDarkMode (context)? CustomColors.darkerGrey: CustomColors.light,

            ),

            const SizedBox(width: CustomSizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox (width: CustomSizes.spaceBtwItems),
            const CircularIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              size: CustomSizes.md,
              color: CustomColors.white,
              backgroundColor: CustomColors.primary,
            ),
          ]);
  }
}
