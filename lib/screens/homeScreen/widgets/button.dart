

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/constants.dart';
import '../../../manager/testStyleManager.dart';


///Custom button for home screen
Widget button(){
  return
    MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.deepOrange.withOpacity(0.5),
      onPressed: () {

        /// Checking if from place, to place and date is empty
        if(
            fromPlace.value != "" &&
            toPlace.value != "" &&
            datePicked.value != ""){

          Get.toNamed("/busListScreen");

        }else{

          /// Show snack bar is above values are empty
          Get.snackbar("NOTE", "Please don't leave any fields and select a date");
        }
      },
      child: Text("Search Buses",
          style: Style().searchBusesBtn),
    );
}