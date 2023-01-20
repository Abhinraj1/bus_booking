import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



///Floating action button for select bus seat screen
Widget floatingActionButton(){
  return
      FloatingActionButton.extended(
        backgroundColor: Colors.brown.shade800,
        label: const Text("Confirm Seat And Book"),
        onPressed:(){
          Get.offAllNamed("/finalScreen");
        },

      );
}