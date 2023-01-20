import 'package:get/get.dart';
import 'package:flutter/material.dart';


class ConfettiController extends GetxController with
    GetSingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("ON INITTTT========================");
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 4
      ),
    );
    controller.repeat();

  } @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    controller.dispose();
  }
}