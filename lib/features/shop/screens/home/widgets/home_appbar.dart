import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/personalization/controllers/user_controller.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import 'package:qastlay/utils/shimmer/shimmer_effect.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const SizedBox(height: CustomSizes.xs,),
            Text(CustomTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: CustomColors.grey)),
            // const SizedBox(height: CustomSizes.xs,),
          Obx(() {
            if (controller.profileLoading.value) {
              // Display a shimmer loader while user profile is being loaded
              return const TShimmerEffect(width: 80, height: 15);
            }else {
              return Text(controller.user.value.fullName, style: Theme
                  .of(context).textTheme.headlineSmall!.apply(color: CustomColors.white));
            }}),
            ]),
            actions: [
              CartCounterIcon(onPressed: () {}, iconColor: CustomColors.white,),
        ],);

  }
}




