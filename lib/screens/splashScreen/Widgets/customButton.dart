import 'package:blur_container/blur_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../manager/testStyleManager.dart';


Widget customButton(){
  return
    Positioned(
      bottom: 80,
      left: 30,
      right: 30,
      child: BlurContainerWidget(
        color: Colors.lightBlueAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15),
        child: MaterialButton(
          onPressed: (){
            Get.toNamed("/home");
          },
  height: 100,
  minWidth: 250,
  shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
  ),
        child: Text("Book Ticket",
        style: Style().splashScreenBtn),
  ),
      ),
    );
}