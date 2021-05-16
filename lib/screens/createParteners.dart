import 'package:flutter/material.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/widgets/drawer.dart';
import 'package:web_app/widgets/loginShape.dart';
import 'package:web_app/widgets/partenersShape.dart';
import 'package:web_app/widgets/roundedButtonShape.dart';
class PartenersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,

            child: Column(
              children: [
                Center(
                  child: Text('انشاء شريك جديد',style:TextStyle(
                    fontSize: SizeConfig.screenWidth/20,
                  )),
                ),
                Expanded(
                  child: Container(
                    width:SizeConfig.screenWidth/1.5,

                    child: Center(
                      child: Padding(
                        padding:  EdgeInsets.only(top:10),
                        child: Center(
                          child: Column(
                            children: [

                              SizedBox(height: SizeConfig.screenWidth/20,),
                              PartenersLoginShape(),
                             // RoundedButtonShape(title:'Login',onpress: ()=>Navigator.pushReplacementNamed(context, '/main'),)

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
        ),

    );
  }
}