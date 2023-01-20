import 'package:flutter/material.dart';
import '../../manager/assetManager.dart';
import '../CommonWidgets/CustomScaffold.dart';
import 'Widgets/customButton.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      riveName: splashScreenRive,

      ///Custom button to navigate to home screen
      child: customButton()
    );
  }
}
