import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/layouts/grid_layout.dart';
import 'package:qastlay/common/widgets/products/products_cart/product_cart_vertical.dart';
import 'package:qastlay/features/shop/screens/home/home.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import '../../../../common/widgets/icons/circular_icon.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(icon: Iconsax.add,onPressed: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 6, itemBuilder: (_,index)=>const ProductCartVertical())
            ],
          ),
        ),
      ),
    );
  }
}
