import 'package:blur_container/blur_container.dart';
import 'package:bus_booking/screens/homeScreen/widgets/DatePicker.dart';
import 'package:bus_booking/screens/homeScreen/widgets/button.dart';
import 'package:bus_booking/screens/homeScreen/widgets/fromAndToTextField.dart';
import 'package:flutter/material.dart';
import '../../manager/assetManager.dart';
import '../CommonWidgets/customScaffold.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      riveName: homeRive,
      child: Center(
        child: BlurContainerWidget(
          width: 320,
          height: 500,
          borderRadius: BorderRadius.circular(20),
         color: Colors.white10,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),

                ///TextFields
                const FromAndToTextField(),

                ///Date Picker
                datePicker(),

                ///Custom Button
                button()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
