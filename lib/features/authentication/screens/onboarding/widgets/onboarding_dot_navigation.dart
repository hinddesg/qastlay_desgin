import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/functions/helper_function.dart';
import 'package:qastlay/features/authentication/controllers/onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: DeviceUtility.getBottomNavigationBarHeight() + 25,
        left: CustomSizes.defaultSpace,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(activeDotColor: dark ? CustomColors.light : CustomColors.primary ,dotHeight: 6 ),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
        )
    );
  }
}
