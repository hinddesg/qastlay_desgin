import 'package:flutter/material.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';
import '../../../../features/shop/models/home_view_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key, required this.index,
  });
final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          /// Image
          RoundedImage(
            imageUrl: controller.productModel[index].image,
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
                  // const BrandTitleWithVerifiedIcon (title: 'Toshiba'),
                   Flexible(child: ProductTitleText(title: controller.productModel[index].name, maxLines: 1)),
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
