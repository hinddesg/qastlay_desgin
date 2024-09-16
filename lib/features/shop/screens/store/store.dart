import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/layouts/grid_layout.dart';
import 'package:qastlay/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:qastlay/common/widgets/texts/section_heading.dart';
import 'package:qastlay/features/shop/screens/store/widgets/category_tab.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/functions/helper_function.dart';
import '../brand/all_brands.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: CustomAppbar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              CartCounterIcon(
                onPressed: () {},
              )
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: CustomHelperFunctions.isDarkMode(context)
                      ? CustomColors.black
                      : CustomColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// Search bar
                        const SizedBox(height: CustomSizes.spaceBtwItems),
                        const SearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: CustomSizes.spaceEtwSections),

                        ///Feature brand
                        SectionHeading(
                          title: 'Feature brand',
                          onPressed:() => Get.to(() => const AllBrandsScreen()),
                        ),
                        const SizedBox(height: CustomSizes.spaceBtwItems / 1.5),
                        GridLayout(
                            itemCount: 4,
                            mainAxisExtent: 88,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: RoundedContainer(
                                  padding: const EdgeInsets.all(CustomSizes.sm),
                                  showBorder: true,
                                  backgroundColor: Colors.transparent,
                                  child: Row(children: [
                                    ///-- Icon
                                    Flexible(
                                      child: CircularImage(
                                        isNetworkImage: false,
                                        image: CustomImages.google,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            CustomHelperFunctions.isDarkMode(
                                                    context)
                                                ? CustomColors.white
                                                : CustomColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                        width: CustomSizes.spaceBtwItems / 2),

                                    /// Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.large),
                                          Text(
                                            '256 products of mobile',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                  ///tabs
                  bottom: const CustomTabBar(
                    tabs: [
                      Tab(child: Text('Laptops'),),
                      Tab(child: Text('Pc'),),
                      Tab(child: Text('Externals'),),
                      Tab(child: Text('Mobile'),),
                      Tab(child: Text('Tablets'),),
                    ],
                  ),
                ),
              ];
            },
            body:const TabBarView(
              children: [
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                ]
            ),
          )),
    );
  }
}




  // Expanded(
  // child: RoundedContainer(
  // height: 100,
  // margin: const EdgeInsets.only(right: CustomSizes.sm),
  // padding: const EdgeInsets.all(CustomSizes.md),
  // backgroundColor: CustomHelperFunctions.isDarkMode(context) ? CustomColors.darkerGrey : CustomColors.light,
  // child: const Image(fit: BoxFit.contain, image: AssetImage(CustomImages.facebook),),
  // ),
  // ),
  // Expanded(
  // child: RoundedContainer(
  // height: 100,
  // margin: const EdgeInsets.only(right: CustomSizes.sm),
  // padding: const EdgeInsets.all(CustomSizes.md),
  // backgroundColor: CustomHelperFunctions.isDarkMode(context) ? CustomColors.darkerGrey : CustomColors.light,
  // child: const Image(fit: BoxFit.contain, image: AssetImage(CustomImages.facebook),),
  // ),
  // ),
  // Expanded(
  // child: RoundedContainer(
  // height: 100,
  // margin: const EdgeInsets.only(right: CustomSizes.sm),
  // padding: const EdgeInsets.all(CustomSizes.md),
  // backgroundColor: CustomHelperFunctions.isDarkMode(context) ? CustomColors.darkerGrey : CustomColors.light,
  // child: const Image(fit: BoxFit.contain, image: AssetImage(CustomImages.facebook),),
  // ),
  // )