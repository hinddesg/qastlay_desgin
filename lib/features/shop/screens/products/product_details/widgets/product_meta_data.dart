import 'package:flutter/material.dart';
import '../../../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../../utils/constants/enums.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';
import '../../../../models/home_view_model.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sate Price
        ProductPriceText(
          price:  controller.productModel[index].price,
          isLarge: true,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 1.5),

        /// Title
        ProductTitleText(title: controller.productModel[index].name),
        const SizedBox(height: CustomSizes.spaceBtwItems / 1.5),
        BrandTitleWithVerifiedIcon (title: controller.productModel[index].brand, brandTextSize: TextSizes.medium),

        /// Title
        const Row(
            children: [
              // CircularImage (
              //   image:CustomImages.google,
              //   width: 32,
              //   height: 32,
              //   overlayColor:
              //   CustomHelperFunctions.isDarkMode(
              //       context)
              //       ? CustomColors.white
              //       : CustomColors.black,
              // ),
              SizedBox(width: 8,),
            ]),
      ],

    );
  }
}
