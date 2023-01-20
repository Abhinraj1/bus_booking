import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/busConstants.dart';
import '../../../manager/testStyleManager.dart';


/// list view builder for list of buses
Widget busListViewBuilder( BuildContext context){
  return
    SizedBox(
      height: 500,
      child: ListView.builder(
          itemCount: busList.length,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  Get.toNamed("/selectBusSeatScreen");
                },
                title: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(busList[index].name.toString(),
                      style: Style().listTileTitle),
                ),
                subtitle: Text(busList[index].description.toString(),
                    style: Style().listTileDescription),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(busList[index].startTime.toString(),
                        style: Style().listTileTime),
                    const Icon(Icons.timer),
                    Text(busList[index].endTime.toString(),
                        style: Style().listTileTime),
                  ],
                ),
                contentPadding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.white,
              ),
            );
          }),
    );
}