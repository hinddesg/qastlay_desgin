import 'package:flutter/material.dart';
import '../custom_shapes/container/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/functions/helper_function.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    this.showBorder = true,
  });

  final bool showBorder ;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      /// Container Design
      child: RoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(CustomSizes.sm),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ///Icon
          Flexible(
            child: CircularImage(
              isNetworkImage: false,
              image: CustomImages.google,
              backgroundColor: Colors.transparent,
              overlayColor: isDark ? CustomColors.white : CustomColors.black,
            ),
          ),
          // Flexible
          const SizedBox(width: CustomSizes.spaceBtwItems / 2),

          /// -- Texts
// [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vertical center and also
// to keep text inside the boundaries.
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BrandTitleWithVerifiedIcon(
                    title: 'Nike', brandTextSize: TextSizes.large),
                Text(
                  '256 products of mobile',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
