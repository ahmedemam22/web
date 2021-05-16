import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:web_app/screens/createCustomerScreen.dart';
import 'package:web_app/screens/createParteners.dart';
import 'package:web_app/screens/loginScreen.dart';
import 'package:web_app/screens/mainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    apiKeyGoogle: '<Key>', // NOT YET TESTED
  );
  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );



}
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return

      MaterialApp(
          title: 'web',
          theme: ThemeData(
            fontFamily: "GESS",

            primarySwatch: Colors.blue,

            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          locale: Locale('ar'),
          supportedLocales: translator.locals(),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          initialRoute: "/login",

          routes: {
            '/login': (context) => LoginScreen(),
            '/main': (context) => MainScreen(),
            '/parteners': (context) => PartenersScreen(),
            '/customers': (context) => CreateCustomersScreen(),

          },
          debugShowCheckedModeBanner: false,



      );
  }
}



