import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/members/home/homeController.dart';
import 'package:test1/public/login/loginController.dart';

class HomePage extends StatefulWidget {
  HomePage() {}

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeCtrl = Get.put(HomeController());
  var loginData = Get.find<LoginController>().loginData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test app'),
        ),
        body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Container(
          padding: EdgeInsets.all(10),
          //color: Theme.of(context).accentColor,
          width: 300,
          height: 400,
          child: Column(
            children: [
              Obx(() => Text('Hola ${loginData().success.userID}')),
              Obx(() => Text('Tu token es: ${loginData().success.token}'))
            ],
          ),
        )));
  }
}
