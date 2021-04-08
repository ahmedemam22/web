import 'package:flutter/material.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/utils/sizeResponsive.dart';
import 'package:web_app/widgets/loginShape.dart';
import 'package:web_app/widgets/roundedButtonShape.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/utils/sizeResponsive.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(

      body:  Container(
        height: MediaQuery.of(context).size.height,

        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenWidth/15,),
            Center(
              child: Text('Welcome to the Golden Discount',style:TextStyle(
                fontSize: SizeConfig.screenWidth/20,
              )),
            ),
            Container(
              width:SizeConfig.screenWidth/1.5,

              child: Center(
                  child: Padding(
                    padding:  EdgeInsets.only(top:10),
                    child: Center(
                      child: Column(
                        children: [

                          SizedBox(height: SizeConfig.screenWidth/20,),
                          LoginShape(),
                          RoundedButtonShape(title:'Login',onpress: ()=>Navigator.pushReplacementNamed(context, '/scan'),)

                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),

    );
  }
}