import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:qastlay/features/shop/screens/home/widgets/home_categories.dart';
import 'package:qastlay/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_cart/product_cart_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../all_products/all_products.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            const PrimaryHeaderContainer(
              child:Column(
                children: [
                  /// Appbar
                  CustomHomeAppbar(),
                  SizedBox(height: CustomSizes.spaceEtwSections,),

                  /// Searchbar
                  SearchContainer(text: 'Search in Store',),
                  SizedBox(height: CustomSizes.spaceEtwSections,),

                  /// Heading
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
                    child: Column(
                      children: [
                       SectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white,),
                        SizedBox(height: CustomSizes.spaceBtwItems),
                      ],
                    ),
                  ),
                  ///Categories
                  HomeCategories(),
                  SizedBox(height: CustomSizes.spaceEtwSections),///vvvvm
                ],
              )
            ,),

            Padding(
              padding:const EdgeInsets.all(CustomSizes.defaultSpace),
               child: Column(
                 children: [
                   const PromoSlider(banners: [ CustomImages.banner1, CustomImages.banner1, CustomImages.banner1,],),
                   const SizedBox(height: CustomSizes.spaceEtwSections),
                   ///heading
                    SectionHeading(title: 'Popular Products',onPressed: () => Get.to(() => const AllProducts()),),
                   const SizedBox(height: CustomSizes.spaceBtwItems),
                  /// Popular Products Tutorial
                   GridLayout(itemCount: 6, itemBuilder: (index,_) => const ProductCartVertical(),)
                 ],
               )
            ),
          ],
        ),
      ),
    );
  }
}
