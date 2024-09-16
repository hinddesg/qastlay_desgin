
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/functions/helper_function.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal:CustomSizes.defaultSpace ),
  });

  final String text;
  final IconData? icon;
  final bool showBackground,showBorder;
  final VoidCallback ? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          padding:  const EdgeInsets.all(CustomSizes.md),
          width: DeviceUtility.getScreenWidth(context),
          decoration: BoxDecoration(
            color: showBackground? dark?  CustomColors.dark: CustomColors.white :Colors.transparent,
            borderRadius: BorderRadius.circular(CustomSizes.cardRadiusLg),
            border: showBorder? Border.all(color:CustomColors.grey) :null,
          ),
          child:  Row(
            children: [
              Icon(icon,color: CustomColors.darkerGrey,),
              const SizedBox(width: CustomSizes.spaceBtwItems,),
              Text(text,style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}