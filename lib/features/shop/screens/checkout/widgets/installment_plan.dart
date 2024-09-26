import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class InstallmentPlan extends StatelessWidget {
  const InstallmentPlan({super.key, required this.onSelectedMonth});
  final void Function(int month) onSelectedMonth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeading(
          title: 'Choose the installment plan',
          showActionButton: false,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        DropdownButtonFormField<int>(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {
            onSelectedMonth(value ?? 1);
          },
          items: [1, 3, 6, 9, 12, 15, 18]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text('Month $option')))
              .toList(),
        ),
      ],
    );
  }
}
