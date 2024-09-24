import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/layouts/grid_layout.dart';
import 'package:qastlay/common/widgets/products/products_cart/product_cart_vertical.dart';
import 'package:qastlay/utils/constants/sizes.dart';

import '../../models/home_view_model.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppbar(
      //     showBackArrow: true,
      //     automaticallyImplyLeading:true,
      //     title: Text('Wishlist', style: Theme.of(context).textTheme.headlineSmall)),
      appBar: CustomAppbar(
        // showBackArrow: true,
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        // actions: [
        //   CircularIcon(icon: Iconsax.add,onPressed: () => Get.to(() => const HomeScreen()),),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
          GridLayout(itemCount:controller.productModel.length,
            itemBuilder: (context, index)=> ProductCartVertical(index: index,))
              //GridLayout(itemCount: 6, itemBuilder: (_,index)=>const ProductCartVertical(index: 0,))
            ],
          ),
        ),
      ),
    );
  }
}
