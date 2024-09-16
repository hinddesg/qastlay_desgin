import 'package:flutter/material.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class InformationDetails extends StatelessWidget {
  const InformationDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeading(
          title: 'Information Details',
          showActionButton: false,
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox (width: CustomSizes.spaceBtwItems),
            Text('0923376850', style: Theme.of(context).textTheme.bodyMedium), ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems/2),
        Row(
            children: [
              const Icon(Icons.location_history, color: Colors.grey, size: 16),
              const SizedBox(width: CustomSizes.spaceBtwItems),
              Expanded (child: Text('Omdurman, Salah, Algia', style: Theme.of(context).textTheme.bodyMedium, softWrap: true))
            ]),
      ],
    );
  }
}


