import 'package:electronic_store_app/view/authentication/loginPage.dart';
import 'package:electronic_store_app/view/homePage.dart';
import 'package:electronic_store_app/view/itemCategory/itemType/itemInfoButtonPage.dart';
// import 'package:electronic_store_app/view/loginPage.dart';
import 'package:electronic_store_app/view/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => new Home(),
        '/': (context) => new SplashScreen(),
        '/homepage': (context) => new HomePage(),
        '/loginpage': (context) => LoginPage(),
        '/itemInfoButtonsPage': (context) => ItemInfoButtonsPage(),
        // '/medicineadd': (context) => HourlyMedicine(),
      },
      // title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashScreen(),
    );
  }
}

