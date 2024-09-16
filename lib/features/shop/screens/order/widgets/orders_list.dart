import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';

class OrdersListItems extends StatelessWidget {
  const OrdersListItems({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return ListView.separated(
      itemCount: 6,
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: CustomSizes.spaceBtwItems),
      itemBuilder: (_,index) =>RoundedContainer(
          showBorder: true,
          padding: const EdgeInsets.all(CustomSizes.md),
          backgroundColor: dark ? CustomColors.dark : CustomColors.light,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            /// -- Row 1
            Row(children: [
              /// 1 Icon
              const Icon(Iconsax.ship),
              const SizedBox(width: CustomSizes.spaceBtwItems / 2),

              /// 2 Status & Date
              Expanded(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: CustomColors.primary, fontWeightDelta: 1),
                      ),
                      Text('87 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ]),
              ),
              IconButton(
                  icon: const Icon(Iconsax.arrow_right_34, size: 18),
                  onPressed: () {}),
              // const SizedBox(height: CustomSizes.spaceBtwItems),
              /// -- Row 2
            ]),
            const SizedBox(height: CustomSizes.spaceBtwItems ),

            Row(
              children: [
                  Expanded(
                    child: Row(children: [
                        /// 1 Icon
                        const Icon(Iconsax.tag),
                        const SizedBox(width: CustomSizes.spaceBtwItems / 2),
                        /// 2 Status & Date
                        Expanded(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Order', style: Theme.of(context).textTheme.labelMedium),
                                Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium),
                              ]),
                        ),
                    ]),
                  ),
                Expanded(
                  child: Row(children: [
                    /// 1 Icon
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: CustomSizes.spaceBtwItems / 2),
                    /// 2 Status & Date
                    Expanded(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('03 Oct 2024', style: Theme.of(context).textTheme.titleMedium),
                          ]),
                    ),
                  ]),
                ),

      ])
          ])),
    );
  }
}
