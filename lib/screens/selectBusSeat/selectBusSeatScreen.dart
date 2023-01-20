import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'Widgets/floatingActionButton.dart';



class SelectBusSeatScreen extends StatelessWidget {
  const SelectBusSeatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: floatingActionButton(),
      backgroundColor: Colors.brown.shade600,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80.0,
        top: 20),
        child: DragSelectGridView(
          itemCount: 40,
          itemBuilder: (context, index, selected) {
            var isSelect = selected.obs;
            return
             InkWell(
               onTap: (){

                 ///Switching the value
                 isSelect.value = ! isSelect.value;
               },
               child:
               Obx(() =>
               isSelect.value?
               SvgPicture.asset("assets/images/selected.svg"):
               SvgPicture.asset("assets/images/avaliable.svg")
               )
             );
          },
           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 10,
            childAspectRatio: 3/2,
            mainAxisSpacing: 20
          ),
        ),
      ),
    );
  }
}
