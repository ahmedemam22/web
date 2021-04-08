import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(


      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          drawerShape('الشركاء'),
          drawerShape("العروض"),
          drawerShape("الدفاتر"),
          drawerShape("العملاء"),
          drawerShape("التقارير"),
          drawerShape("ادارة المستخدمين"),
        ],
      ),
    );
  }
  drawerShape(String title){
    return ListTile(
      title: Text(title),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    );
  }
}