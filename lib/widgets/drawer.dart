import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/utils/sizeConfig.dart';
import 'package:web_app/utils/sizeResponsive.dart';
import 'package:web_app/utils/colors.dart';
class MyDrawer extends StatelessWidget {
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context=context;
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color:lightYellow,
            ),
          ),
          drawerShape('الشركاء','parteners','parteners'),
          drawerShape("العروض",'offers','parteners'),
          drawerShape("الدفاتر",'documents','parteners'),
          drawerShape("العملاء",'customers','customers'),
          drawerShape("التقارير",'report','parteners'),
          drawerShape("ادارة المستخدمين",'management','parteners'),
        ],
      ),
    );
  }
  drawerShape(String title,String iconName,String routeName){
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenWidth/25,),
        InkWell(
          onTap: (){

          },
          child: ListTile(
            title: Text(title,style: TextStyle(
              fontSize: SizeConfig.screenWidth*s15
            ),),
            leading: SvgPicture.asset(
                'assets/images/$iconName.svg',
                color: Colors.blue,
                width: SizeConfig.screenWidth/20,
                height:  SizeConfig.screenWidth/20,
              allowDrawingOutsideViewBox: true,
            ),
            onTap: (){
    print('bbbbbbbb');
    Navigator.pop(_context);
    Navigator.pushReplacementNamed(_context, '/$routeName');
              // Update the state of the app.
              // ...
            },
          ),
        ),
      ],
    );
  }
}
