import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/shop/models/home_view_model.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import '../../../../../common/styles/shadows.dart';
import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../products/product_details/product_detail.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    // HomeViewModel is already registered using Get.put()

    return GetBuilder<HomeViewModel>(
      // init: Get.find(),  // Find the registered HomeViewModel
      builder: (HomeViewModel controller) => ListView.builder(
        itemCount: controller.productModel.length,
        itemBuilder: (context, index) => GestureDetector(
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
                // Thumbnail, Wishlist Button, Discount Tag
                RoundedContainer(
                  height: 160,
                  padding: const EdgeInsets.all(CustomSizes.sm),
                  backgroundColor: dark ? CustomColors.dark : CustomColors.light,
                  child: Stack(
                    children: [
                      Center(
                        child: RoundedImage(
                          imageUrl: controller.productModel[index].image ?? '',
                          applyImageRadius: true,
                        ),
                      ),
                      const Positioned(
                        right: 0,
                        top: 0,
                        child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                Padding(
                  padding: const EdgeInsets.only(left: CustomSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: controller.productModel[index].name ?? 'Unknown Product',
                        smallSize: true,
                      ),
                      const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                      Row(
                        children: [
                          Text(
                            '0.00',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: CustomSizes.sm),
                      child: ProductPriceText(
                        price: '0.00',
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
                        child: Icon(Iconsax.add, color: CustomColors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
