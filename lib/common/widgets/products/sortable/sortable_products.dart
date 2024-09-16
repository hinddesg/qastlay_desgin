import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/products/products_cart/product_cart_vertical.dart';
import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown

        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),

        const SizedBox(height: CustomSizes.spaceEtwSections),

        /// Products
        GridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const ProductCartVertical())
      ],
    );
  }
}
