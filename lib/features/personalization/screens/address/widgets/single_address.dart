import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/functions/helper_function.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return RoundedContainer(
        width: double.infinity,
        showBorder: true,
        padding: const EdgeInsets.all(CustomSizes.md),
        backgroundColor: selectedAddress
            ? CustomColors.primary.withOpacity(0.5)
            : Colors.transparent,
        borderColor: selectedAddress
            ? Colors.transparent
            : dark
                ? CustomColors.darkerGrey
                : CustomColors.grey,
        margin: const EdgeInsets.only(bottom: CustomSizes.spaceBtwItems),
        child: Stack(children: [
          Positioned(
            right: 0,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? CustomColors.light
                      : CustomColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              'Hind Badawi',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: CustomSizes.sm / 2),
            const Text('(+123) 456 7890',
                maxLines: 1, overflow: TextOverflow.ellipsis),
            const SizedBox(height: CustomSizes.sm / 2),
            const Text('Omdurman, Salah, Algia',
                softWrap: true),
          ])
        ]));
  }
}
