import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../features/shop/screens/products/product_details/product_detail.dart';
import '../../../../features/shop/screens/products/product_details/widgets/product_price_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/functions/helper_function.dart';
import '../../custom_shapes/container/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import '../../texts/product_title_text.dart';

class ProductCartHorizontal extends StatelessWidget {
  const ProductCartHorizontal({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen(index: index,)),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
          color: dark ? CustomColors.darkerGrey : CustomColors.softGrey,
        ),
        child: Row(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(CustomSizes.sm),
              backgroundColor: dark ? CustomColors.dark : CustomColors.white,
              child: const Stack(children: [
                /// Thumbnail Image
                SizedBox(
                    height: 120,
                    width: 120,
                    child: Center(
                        child: RoundedImage(
                            imageUrl: CustomImages.productImage1,
                            applyImageRadius: true))),

                /// Favourite Icon Button
                Positioned(
                    right: 0,
                    top: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ]),
            ),

            /// Details
             SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top:CustomSizes.sm,left:CustomSizes.sm),
                child: Column(
                    children: [
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    ProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt', smallSize: true),
                    SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    // BrandTitleWithVerifiedIcon(title: 'Nike'),
                  ]),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    const Flexible(child: ProductPriceText(price: '256.0')),
                        Container(
                          decoration: const BoxDecoration(
                            color: CustomColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular (CustomSizes.cardRadiusMd),
                              bottomRight: Radius.circular (CustomSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: CustomSizes.iconLg * 1.2,
                            height: CustomSizes.iconLg * 1.2,
                            child: Icon(Iconsax.add, color: CustomColors.white),
                          ),
                        ),
                  ])
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
