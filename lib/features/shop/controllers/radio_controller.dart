import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioButtonWidget extends GetxController {
  String _installmentPlan = 'timeprude';
  String get  installmentPlan => _installmentPlan;
  void installmentPlanTime(String plan){
    _installmentPlan =plan;
    update();
  }


}
