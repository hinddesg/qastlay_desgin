import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class AllProductToSubCategory extends StatelessWidget {
  const AllProductToSubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title:Text('Products Category'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(CustomSizes.defaultSpace),
            child: SortableProducts()
        ),
      ),
    );
  }
}
