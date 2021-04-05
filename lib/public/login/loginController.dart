import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/members/home/homePage.dart';
import 'package:test1/models/LoginResponse.dart';
import 'package:test1/providers/ApiProvider.dart';
import 'package:test1/providers/AppService.dart';

class LoginController extends GetxController {
  String email;
  String password;
  var loginData = new LoginResponse().obs;
  var loading = false.obs; // Add .obs to make observable variable
  var error = false.obs;

  loginAction() async {
    this.loading.toggle();
    this.error = false.obs;

    this.loginData = (await ApiProvider().Login(this.email, this.password)).obs;
    print(this.loginData().success);
    this.loading.toggle();

    if (this.loginData().success == null) this.error = true.obs;

    if (this.loginData().success != null) {
      AppService().loginData = this.loginData().obs;
      Get.to(HomePage());
    }
  }
}
