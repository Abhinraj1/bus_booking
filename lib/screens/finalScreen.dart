import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import '../Controller/confettiController.dart';
import '../manager/testStyleManager.dart';


class FinalScreen extends StatelessWidget {
   FinalScreen({Key? key}) : super(key: key);
    ConfettiController confettiController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade800,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.offAllNamed("/home");
        },
         child: const Icon(Iconsax.home),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             AnimatedEmoji(
              AnimatedEmojis.confettiBall,
              animate: true,
              controller: confettiController.controller,
              size: 200,
              repeat: true,
            ),
            Text("CONGRATS TICKET BOOKED",
            textAlign: TextAlign.center,
            style: Style().title,)
          ],
        ),
      ),
    );
  }
}
