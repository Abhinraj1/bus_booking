import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/constants.dart';
import '../../../manager/sugguestionsList.dart';
import '../../../manager/testStyleManager.dart';



/// Custom testfield for from and to place
class FromAndToTextField extends StatelessWidget {
  const FromAndToTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customTextForm(isTo: false),
          customTextForm(isTo: true),
        ],
      ),
    );
  }


  /// For suggestions
  Widget customTextForm({required bool isTo}){
    return EasyAutocomplete(
      cursorColor: Colors.grey,
      debounceDuration: const Duration(seconds: 5),
      suggestions: suggestions,
      inputTextStyle: Style().fromTxtField,
      suggestionBackgroundColor: Colors.deepOrange.withOpacity(0.8),
      suggestionTextStyle: Style().suggestion,
      onChanged: (value){

        /// saving values to respective variables
        isTo ?
        toPlace.value = value.toString() :
        fromPlace.value = value.toString();
      },
      decoration: InputDecoration(
        labelText: isTo ?
        "To" :
         "From",
        labelStyle: Style().label,
        fillColor: Colors.white.withOpacity(0.5),
        filled: true,
        border: InputBorder.none,
        prefixIcon: isTo ?
        const Icon(Iconsax.home,
          color: Colors.white,) :
        const Icon(Iconsax.location,
        color: Colors.white,)

      ),
    );
  }
}
