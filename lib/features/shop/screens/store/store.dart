import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:qastlay/features/shop/screens/store/widgets/category_tab.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/functions/helper_function.dart';

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
                  expandedHeight: 200,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        /// Search bar
                        SizedBox(height: CustomSizes.spaceBtwItems),
                        SearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        SizedBox(height: CustomSizes.spaceEtwSections),

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