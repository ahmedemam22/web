import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/utils/sizeResponsive.dart';
class RoundedButtonShape extends StatelessWidget {
  final String title;
  final Function onpress;

  const RoundedButtonShape({Key key, this.title, this.onpress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: SizeConfig.screenWidth*s30),
      child: Container(
        height: SizeConfig.screenWidth*s40,
        width:  SizeConfig.screenWidth*s165,
        child: RaisedButton(

            color: lightYellow,
            child: Text(title,style: TextStyle(
                fontSize:  SizeConfig.screenWidth*s20,
                color: Colors.white
            ),),
            onPressed: onpress,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular( SizeConfig.screenWidth*s30))
        ),
      ),
    );
  }
}