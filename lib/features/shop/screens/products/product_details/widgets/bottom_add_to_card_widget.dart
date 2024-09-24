import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/shop/screens/cart/cart.dart';
import '../../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';

class BottomAddToCard extends StatelessWidget {
  const BottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: CustomSizes.defaultSpace,
            vertical: CustomSizes.defaultSpace / 2),
        decoration: BoxDecoration(
            color: dark ? CustomColors.darkerGrey : CustomColors.light,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(CustomSizes.cardRadiusLg),
              topRight: Radius.circular(CustomSizes.cardRadiusLg),
            )
        ),

        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
              children: [
            const CircularIcon(
              icon: Iconsax.minus,
              backgroundColor: CustomColors.darkGrey,
              width: 40,
              height: 40,
              color: CustomColors.white,
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: CustomSizes.spaceBtwItems),
            const CircularIcon(
              icon: Iconsax.add,
              backgroundColor: CustomColors.black,
              width: 40,
              height: 40,
              color: CustomColors.white,
            ),
              ]),
            ElevatedButton(
                onPressed: () => Get.to(() => const CartScreen()),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(CustomSizes.md),
                  backgroundColor: CustomColors.black,
                  side: const BorderSide (color: CustomColors.black),
                ), child: const Row(
                  children: [
                    Icon(Iconsax.shopping_cart),
                    SizedBox(width: 10,),
                    Text('Add to Cart'),
                  ],
            )),
        ]));
  }
}
