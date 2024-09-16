import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class InstallmentPlan extends StatelessWidget {
  const InstallmentPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeading(title: 'Choose the installment plan',showActionButton: false,),
        const SizedBox (height: CustomSizes.spaceBtwItems),
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['3 Month', '6 Month', '9 Month', '12 Month', '18 Month',]
              .map((option) =>
              DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
      ],
    );
  }
}
