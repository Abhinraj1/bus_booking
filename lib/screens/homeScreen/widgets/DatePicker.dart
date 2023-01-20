import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

/// Date picker
Widget datePicker(){
  return  LimitedBox(
    maxHeight: 200,
    child: CalendarDatePicker2(
      config: CalendarDatePicker2Config(),
      initialValue:  [],
      onValueChanged: (value){

        /// saving the date in datePicked variable
        datePicked.value = value.last!.toString().substring(0,10);
      },
    ),
  );
}