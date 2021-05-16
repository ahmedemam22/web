import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/widgets/textFieldShape.dart';
import 'package:flutter/widgets.dart';

import 'countryPicker.dart';
class CustomersLoginShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: lightYellow,
      child:Column(
        children: [
          SizedBox(height: SizeConfig.screenWidth/50,)
          ,
          TextFieldShape(hint: 'اسم العميل',),
          TextFieldShape(hint: 'البريد الالكترونى',),
          TextFieldShape(hint: 'رقم الجوال',number: true,),
          TextFieldShape(hint: 'النوع',),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex:2,child: Text('الجنسية')),
                Expanded(
                    flex:1,child: MyCountryPicker()),
              ],
            ),
          ),
          radioGroup(),


          SizedBox(height: SizeConfig.screenWidth/50,)

        ],
      ),
    );
  }
  radioGroup(){
    return  RadioButtonGroup(
      padding: EdgeInsets.symmetric(horizontal: 10),
        orientation: GroupedButtonsOrientation.HORIZONTAL,
        labels: <String>[
          "Female",
          "Male",
        ],
        onSelected: (String selected) => print(selected)
    );
  }
}
