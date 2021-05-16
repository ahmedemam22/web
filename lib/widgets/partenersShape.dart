import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/widgets/textFieldShape.dart';
class PartenersLoginShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: lightYellow,
      child:Column(
        children: [
          SizedBox(height: SizeConfig.screenWidth/50,)
          ,
          TextFieldShape(hint: 'اسم الشركة',),
          TextFieldShape(hint: 'اسم التاجر'),
          TextFieldShape(hint: 'رقم الجوال',number: true,),
          TextFieldShape(hint: 'اسم المسؤول',),
          TextFieldShape(hint: 'البريد الالكترونى',),

          SizedBox(height: SizeConfig.screenWidth/50,)

        ],
      ),
    );
  }
}