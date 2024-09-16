import 'package:flutter/material.dart';
import '../../../../../../common/widgets/images/circular_image.dart';
import '../../../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/enums.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sate Price
        const ProductPriceText(
          price: '233',
          isLarge: true,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 1.5),

        /// Title
        const ProductTitleText(title: 'Lenovo Laptop'),
        const SizedBox(height: CustomSizes.spaceBtwItems / 1.5),

        /// Title
      Row(
      children: [
       CircularImage (
        image:CustomImages.google,
        width: 32,
        height: 32,
         overlayColor:
         CustomHelperFunctions.isDarkMode(
             context)
             ? CustomColors.white
             : CustomColors.black,
        ),
        const SizedBox(width: 8,),
        const BrandTitleWithVerifiedIcon (title: 'DELL', brandTextSize: TextSizes.medium),
     ]),
    ],
        /// Brand

    );
  }
}
