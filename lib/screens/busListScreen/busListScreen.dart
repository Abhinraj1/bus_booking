import 'package:flutter/material.dart';
import 'Widgets/busListViewBuilder.dart';
import 'Widgets/title.dart';



class BusListScreen extends StatelessWidget {
  const BusListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: Column(
        children: [

          /// Title for bus List screen
          busListTitle(),

          /// List of buses
          busListViewBuilder(context),
        ],
      ),
    );
  }
}
