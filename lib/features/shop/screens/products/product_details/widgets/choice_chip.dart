import 'package:flutter/material.dart';
import '../../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/functions/helper_function.dart';

/// Most of the Styling is already defined in the Utils -> Themes -> Chip Theme.dart
class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = CustomHelperFunctions.getColor(text) != null;

    return ChoiceChip(
      label: isColor ? const SizedBox() :  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? CustomColors.white : null),
      avatar: isColor
          ? CircularContainer(
              width: 50,
              height: 50,
              backgroundColor: CustomHelperFunctions.getColor(text)!)
          : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      shape: isColor ? const CircleBorder() : null,
      backgroundColor: isColor ? CustomHelperFunctions.getColor(text)! : null,
    );
  }
}
