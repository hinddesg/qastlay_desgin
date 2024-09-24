import 'package:flutter/material.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/custom_table.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/product_attributes.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/product_image_slider.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/product_meta_data.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';
import 'package:readmore/readmore.dart';

import '../../../models/home_view_model.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.index,});

  final int index ;
//required ProductModel model hind
  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return  Scaffold(
      bottomNavigationBar: const BottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image
            ProductImageSlider(index: index,),
            Padding(
              padding: const EdgeInsets.only(
                  left: CustomSizes.defaultSpace,
                  right: CustomSizes.defaultSpace,
                  bottom: CustomSizes.defaultSpace
              ),
              child: Column(
                /// Rating & Share Button
                children: [
                  ProductMetaData(index: index,),
                  const SizedBox (height: CustomSizes.spaceEtwSections),
                  /// -- Attributes
                  const ProductAttributes(),
                  /// -- Description
                  const SizedBox (height: CustomSizes.spaceEtwSections),
                  const SectionHeading(title: 'Choose the installment plan',showActionButton: false,),
                  const SizedBox (height: CustomSizes.spaceBtwItems),

                  const DataTableWidget(
                    columnHeaders: ['Month', 'Total Price'],
                    rowData: [
                      ['3 Month', '\$44'],
                      ['6 Month', '\$440'],
                      ['9 Month', '\$4444'],
                    ],
                  ),
                  const SizedBox (height: CustomSizes.spaceEtwSections),
                  const SectionHeading (title: 'Description',showActionButton: false,),
                  const SizedBox (height: CustomSizes.spaceBtwItems),
                 ReadMoreText(
                  controller.productModel[index].description,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: '  Less',
                  moreStyle: const TextStyle (fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: const TextStyle (fontSize: 14, fontWeight: FontWeight.w800),
               ),
                 const SizedBox (height: CustomSizes.spaceEtwSections),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}
