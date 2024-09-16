import 'package:flutter/material.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          /// Image
          RoundedImage(
            imageUrl: CustomImages.productImage1,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(CustomSizes.sm),
            backgroundColor: CustomHelperFunctions.isDarkMode (context)? CustomColors.darkerGrey: CustomColors.light,
          ),
          const SizedBox(width: CustomSizes.spaceBtwItems,),
          /// Title, Price, & Size

          Expanded(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon (title: 'Toshiba'),
                  const Flexible(child: ProductTitleText(title: 'Black Toshiba Laptop', maxLines: 1)),
                  ///Attributes
                  Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(text: ' Black', style: Theme.of(context).textTheme.bodyLarge),
                          ]))

                ]),
          )
        ]);
  }
}
