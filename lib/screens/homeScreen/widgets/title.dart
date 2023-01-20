import 'package:blur_container/blur_container.dart';
import 'package:flutter/material.dart';
import '../../../manager/testStyleManager.dart';







/// Custom title for home screen
Widget title(){
  return Center(
    child: BlurContainerWidget(
      height: 150,
      width: 300,
      color: Colors.lightBlueAccent.withOpacity(0.5),
      borderRadius: BorderRadius.circular(15),
      child: Center(
        child: Text(""
            "BOOK YOUR BUS TICKETS",
          textAlign: TextAlign.center,
        style: Style().title,),
      ),
    ),
  );
}