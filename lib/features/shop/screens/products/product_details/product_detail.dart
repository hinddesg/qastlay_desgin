import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/custom_table.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/product_attributes.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/product_image_slider.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/product_meta_data.dart';
import 'package:qastlay/features/shop/screens/products/product_details/widgets/rating_and_share.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';
import 'package:readmore/readmore.dart';
import '../../products/product_reviews/product_reviews_screen.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const BottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image
            const ProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                left: CustomSizes.defaultSpace,
                right: CustomSizes.defaultSpace,
                bottom: CustomSizes.defaultSpace
            ),
              child: Column(
                /// Rating & Share Button
                children: [
                const RatingAndShare(),
                const ProductMetaData(),
                  const SizedBox (height: CustomSizes.spaceEtwSections),
                  /// -- Attributes
                  const ProductAttributes(),
                  const SizedBox (height: CustomSizes.spaceEtwSections),
                  SizedBox(width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Checkout')),
                  ),
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
                const ReadMoreText(
                  'This is a Product description for Blue Nike Sleeve less vest This is a'
                   ' Product description for Blue Nike Sleeve less vest. ',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Less',
                moreStyle: TextStyle (fontSize: 14, fontWeight: FontWeight.w800),
                lessStyle: TextStyle (fontSize: 14, fontWeight: FontWeight.w800),
          ),

               /// - Reviews
                 const SizedBox (height: CustomSizes.spaceEtwSections),
                const Divider(),
                const SizedBox (height: CustomSizes.spaceBtwItems),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const SectionHeading(title: 'Reviews (199)', showActionButton: false),
                    IconButton(icon:  const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () =>Get.to(()=>ProductReviewsScreen())),
                ],),
                 const SizedBox (height:CustomSizes.spaceEtwSections),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}
