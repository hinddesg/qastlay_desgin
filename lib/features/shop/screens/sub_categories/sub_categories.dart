import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/texts/section_heading.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import '../../../../common/widgets/products/products_cart/product_cart_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: Text('Sport shirts'),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
              children: [
                ///heading
                SectionHeading(  
                  title: 'Dell Laptop',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwItems / 2,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: CustomSizes.spaceBtwItems),
                    itemBuilder: (context, index) =>
                         ProductCartHorizontal(index: index,),
                  ), // ListView.separated
                ), // SizedBox
              ],
            ),
          ),
        ));
  }
}
