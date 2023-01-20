import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


/// CustomScaffold to show background image
class CustomScaffold extends StatelessWidget {
  final String riveName;
  final Widget child;
  const CustomScaffold({Key? key,
    required this.riveName,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child:  RiveAnimation.asset(
                riveName,
                fit: BoxFit.cover,
              ),
            ),
            child
          ],
        )
    );
  }
}