import 'package:flutter/material.dart';
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
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(CustomTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: CustomColors.grey)),
            Text(CustomTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: CustomColors.white)),
          ]),
            actions: [
              CartCounterIcon(onPressed: () {}, iconColor: CustomColors.white,),
        ],);

  }
}




