import 'package:flutter/material.dart';
import 'package:qastlay/features/shop/screens/order/widgets/orders_list.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
            showBackArrow: true,
            automaticallyImplyLeading:true,
            title: Text('Order', style: Theme.of(context).textTheme.headlineSmall)),
        body: const Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child:OrdersListItems(),
        ),

    );
  }
}
