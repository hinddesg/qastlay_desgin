import 'package:flutter/material.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import '../../../../features/shop/models/home_view_model.dart';
import '../../../../features/shop/screens/products/product_details/product_detail.dart';
import '../../../../utils/constants/colors.dart';
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
  final int index; // Add index as a parameter

  const ProductCartVertical({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return GetBuilder<HomeViewModel>(
      builder: (controller) => GestureDetector(
        onTap: () => Get.to(() =>  ProductDetailScreen(index: index,)),
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
            color: dark ? CustomColors.darkerGrey : CustomColors.white,
          ),
          child: Column(
            children: [
              /// Thumbnail, Wishlist Button, Discount Tag
              RoundedContainer(
                height: 160,
                padding: const EdgeInsets.all(CustomSizes.sm),
                backgroundColor: dark ? CustomColors.dark : CustomColors.light,
                child:  Stack(
                  children: [
                    ///  Image
                    Center(
                      child: RoundedImage(
                        imageUrl:controller.productModel[index].image,
                        applyImageRadius: true,
                      ),
                    ),
                    /// Favourite Icon Button
                    const Positioned(
                      right: 0,
                      top: 0,
                      child: CircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems / 2),

              /// Product Details
              Padding(
                padding: const EdgeInsets.only(left: CustomSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: controller.productModel[index].name, // Access product data using index
                      smallSize: true,
                    ),
                    const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                    Row(
                      children: [
                        Text(
                          controller.productModel[index].brand, // Access brand data
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(width: CustomSizes.sm),
                        const Icon(
                          Iconsax.verify5,
                          color: CustomColors.primary,
                          size: CustomSizes.iconXs,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: CustomSizes.sm),
                    child: ProductPriceText(
                      price: controller.productModel[index].price, // Access price data
                      isLarge: true,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: CustomColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(CustomSizes.cardRadiusMd),
                        bottomRight: Radius.circular(CustomSizes.productImageRadius),
                      ),
                    ),
                    child: const SizedBox(
                      width: CustomSizes.iconLg * 1.2,
                      height: CustomSizes.iconLg * 1.2,
                      child: Icon(Iconsax.shopping_cart, color: CustomColors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
