// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class RadioButtonWidget extends StatelessWidget {
//   final String value;
//   final String title;
//   final bool amount;
//   final bool isfree;
//
//
//   const RadioButtonWidget({
//     Key? key,
//     required this.value,
//     required this.title, required this.amount, required this.isfree,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<RadioButtonWidget>(
//
//         builder: (buttonController) {
//
//       return InkWell(
//
//         onTap: () => buttonController.installmentPlanTime (value),
//
//         child: Row(
//
//         children: [
//
//         Radio (
//
//         value: value,
//
//         groupValue: buttonController.installmentPlan,
//
//         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//
//         onChanged: (String? value) {
//
// //buttonController.setOrder Type (value!);
//
//         },
//
//         activeColor: Theme.of (context).primaryColor,
//
//       ) // Radio
//
//     ],));
//
//   });
// }
