import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/layouts/grid_layout.dart';
import 'package:qastlay/common/widgets/products/products_cart/product_cart_vertical.dart';
import 'package:qastlay/common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
       Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          children: [
            SectionHeading(title: 'You might like',showActionButton: true,onPressed: (){},),
            const SizedBox(height: CustomSizes.spaceBtwItems,),
            GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCartVertical(index:0,))
          ],
        ),
      ),
     ]
    );
  }
}
