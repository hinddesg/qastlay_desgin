
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/functions/helper_function.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor = CustomColors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String title,image;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CustomSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 66,
              height: 66,
              padding: const EdgeInsets.all(CustomSizes.md),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (CustomHelperFunctions.isDarkMode(context) ? CustomColors.dark : CustomColors.white),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? CustomColors.light : CustomColors.dark,
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2),
            SizedBox(
              width:65,
              child: Text(title,
                style: Theme.of(context).textTheme.bodySmall!.apply(color: textColor),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )],
        ),
      ),
    );
  }
}
