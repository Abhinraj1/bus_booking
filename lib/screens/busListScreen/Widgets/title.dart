import 'package:bus_booking/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../manager/testStyleManager.dart';


/// Title for bus List screen
Widget busListTitle(){
  return
      Flexible(
        child: Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 30
          ),
          color: Colors.brown.shade900,
          height: double.infinity,
          width: double.infinity,
          child: Text('Buses Available on \n${datePicked.value} \n '
              'From ${fromPlace.value}\n To ${toPlace.value}',
          style: Style().listOfBusTitle,),
        ),
      );
}