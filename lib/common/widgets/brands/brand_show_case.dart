import 'package:flutter/material.dart';
import 'brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/functions/helper_function.dart';
import '../custom_shapes/container/rounded_container.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: CustomColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding:  const EdgeInsets.all(CustomSizes.md),
      margin: const EdgeInsets.only(bottom: CustomSizes.spaceBtwItems),
      child: Column(
        children: [
          // BrandCard,
          const BrandCard(showBorder: false,),
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
  Widget brandTopProductImageWidget(String image, context) {
    return Expanded (
      child: RoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(CustomSizes.md),
        margin: const EdgeInsets.only(right: CustomSizes.sm),
        backgroundColor: CustomHelperFunctions.isDarkMode (context) ? CustomColors.darkerGrey: CustomColors.light,
        child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),

    );
  }
}