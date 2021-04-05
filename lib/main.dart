import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test1/public/login/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test demo',
      theme: ThemeData(primarySwatch: Colors.red, accentColor: Colors.blueGrey),
      home: LoginPage(),
    );
  }
}
