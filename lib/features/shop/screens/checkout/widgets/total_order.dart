import 'package:flutter/material.dart';

class TotalOrder extends StatelessWidget {
  const TotalOrder({
    super.key,
    required this.text,
    required this.price,
    this.currencySign = '\$',
  });
  final String text;
  final String currencySign, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          currencySign + price,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
