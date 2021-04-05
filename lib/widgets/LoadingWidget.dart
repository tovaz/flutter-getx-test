import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test1/public/login/loginController.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularProgressIndicator(),
        SizedBox(width: 10),
        Expanded(child: Text('Loading ...'))
      ],
    );
  }
}
