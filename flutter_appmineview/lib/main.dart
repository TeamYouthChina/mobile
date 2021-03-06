import 'package:flutter/material.dart';
import 'login/login_page.dart';
import 'package:dim/dim.dart';
import 'package:flutter_appmineview/login/style/theme.dart' as Theme;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Dim dim = new Dim();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouthChina',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.white,
        primaryColorLight: Theme.Colors.activecolor,
        backgroundColor: Colors.grey[300],
        accentColor: Theme.Colors.activecolor,
        fontFamily: "PingFangSS",
      ),
      home: Center(
        child:
//        RandomWords(),
        
         LoginPage(
           dim: dim,
         ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

