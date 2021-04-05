import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test1/models/LoginResponse.dart';
import 'constants.dart';

class ApiProvider {
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };
  dynamic url = Uri.https(Constants.API_URL, '/api/login');

  var loginData = null.obs;
  Future<LoginResponse> Login(String email, String password) async {
    Map<String, String> data = {'email': email, 'password': password};
    dynamic res = await http.post(this.url,
        headers: this.headers, body: jsonEncode(data));

    return LoginResponse.fromJson(jsonDecode(res.body));
  }

  showDialog() {
    /*Get.defaultDialog(
        title: 'Loading',
        content: Row(children: [
          CircularProgressIndicator(),
          SizedBox(width: 16),
          Expanded(child: Text('Loading ...'))
        ]));*/
  }
}
