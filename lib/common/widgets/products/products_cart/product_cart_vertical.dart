import 'package:flutter/material.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import '../../../../features/shop/screens/products/product_details/product_detail.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/container/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class ProductCartVertical extends StatelessWidget {
  const ProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =CustomHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () =>Get.to(() => const ProductDetailScreen()),
      child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular (CustomSizes.productImageRadius),
            color: dark? CustomColors.darkerGrey: CustomColors.white,
          ),

          child: Column(
              children: [
                /// Thumbnail, Wishlist Button, Discount Tag
                RoundedContainer(
                  height: 160,
                  padding: const EdgeInsets.all(CustomSizes.sm),
                  backgroundColor: dark? CustomColors.dark: CustomColors.light,
                  child: const Stack(
                      children: [
                        /// Thumbnail Image
                        Center(child: RoundedImage (imageUrl: CustomImages.productImage2, applyImageRadius: true)),
                        /// Favourite Icon Button
                        Positioned(
                            right: 0,
                            top: 0,
                            child: CircularIcon(icon: Iconsax.heart5,color: Colors.red,)
                        ),
                      ]
                  ),),
                const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                /// Details
                Padding(
                  padding: const EdgeInsets.only(left:CustomSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProductTitleText(title: 'DELL Laptop Device DELL Laptop Device',smallSize: true,),
                      const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                      Row(
                        children: [
                          Text('DELL',overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium),
                          const SizedBox(width: CustomSizes.sm),
                          const Icon(Iconsax.verify5,color: CustomColors.primary, size: CustomSizes.iconXs,)
                        ],
                      ),
                      // const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    ],),),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: CustomSizes.sm),
                      child: ProductPriceText(price: '35.5', isLarge: true,),
                    ),
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
                  ],
                ),
              ])
      ),
    );
  }
}

