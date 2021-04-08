import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/widgets/textFieldShape.dart';
import 'package:web_app/utils/sizeResponsive.dart';
import 'package:web_app/utils/sizeConfig.dart';
class LoginShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: lightYellow,
      child:Column(
        children: [
          SizedBox(height: SizeConfig.screenWidth/50,)
          ,
          TextFieldShape(hint: 'Enter Mobile',number: true,),
          TextFieldShape(hint: 'Enter Password'),
          SizedBox(height: SizeConfig.screenWidth/50,)

        ],
      ),
    );
  }
}