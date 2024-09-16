import 'package:flutter/cupertino.dart';
import '../../../../../utils/constants/colors.dart';
import '../curved_edgets/curved_edges_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child:  Container(
        color: CustomColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: CircularContainer(backgroundColor:CustomColors.textWhite.withOpacity(0.1))),
            Positioned(top: 100, right: -300, child: CircularContainer(backgroundColor:CustomColors.textWhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}