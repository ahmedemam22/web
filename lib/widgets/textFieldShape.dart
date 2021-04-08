import 'package:flutter/material.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/utils/sizeResponsive.dart';
class TextFieldShape extends StatelessWidget {
  final String hint;
  final bool number;
  TextFieldShape({this.hint, this.number=false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(SizeConfig.screenWidth*s8),
      child: TextField(
        keyboardType: number?TextInputType.number:TextInputType.visiblePassword,

        style: TextStyle(color: Colors.red),
        decoration: InputDecoration(fillColor: Colors.white, filled: true,hintText: hint),
      ),
    );
  }
}