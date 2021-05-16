import 'package:flutter/material.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/utils/sizeResponsive.dart';
import 'package:web_app/widgets/customerLoginShape.dart';
import 'package:web_app/widgets/drawer.dart';
import 'package:web_app/widgets/loginShape.dart';
import 'package:web_app/widgets/partenersShape.dart';
import 'package:web_app/widgets/roundedButtonShape.dart';
class CreateCustomersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,

        child: ListView(
          children: [
            Center(
              child: Text('انشاء عميل جديد',style:TextStyle(
                fontSize: SizeConfig.screenWidth/20,
              )),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:SizeConfig.screenWidth*s70),
              child: Container(
                width:SizeConfig.screenWidth/4,

                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.only(top:10),
                    child: Center(
                      child: Column(
                        children: [

                          SizedBox(height: SizeConfig.screenWidth/20,),
                          CustomersLoginShape(),
                          RoundedButtonShape(title:'Login',onpress: ()=>Navigator.pushReplacementNamed(context, '/main'),)

                        ],
                      ),
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