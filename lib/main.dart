import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:paynav2/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayNav',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreenAccent,
        primarySwatch: Colors.blue,
       // accentColor: Colors.amberAccent,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}

