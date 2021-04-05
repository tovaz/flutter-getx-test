import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/widgets/LoadingWidget.dart';
import 'package:test1/public/login/loginController.dart';

class LoginPage extends StatefulWidget {
  LoginPage() {}

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginCtrl = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Iniciar Sesion'),
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
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (value) {
                    loginCtrl.email = value;
                  }),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  onChanged: (value) {
                    loginCtrl.password = value;
                  }),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: () {
                        loginCtrl.loginAction();
                      })),
              Obx(() => loginCtrl.error == true.obs
                  ? Text(' Error usuario o clave incorrecta')
                  : Text('')),
              Obx(() =>
                  loginCtrl.loading == true.obs ? LoadingWidget() : Text('')),
            ],
          ),
        )));
  }
}
