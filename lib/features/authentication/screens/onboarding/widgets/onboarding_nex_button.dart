import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/authentication/controllers_onboarding/onboarding_controller.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNexButton extends StatelessWidget {
  const OnBoardingNexButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: DeviceUtility.getBottomNavigationBarHeight() ,
        right: CustomSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: (){
            OnBoardingController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: CustomColors.primary),
          child: const Icon(Iconsax.arrow_right_3),
        )
    );
  }
}