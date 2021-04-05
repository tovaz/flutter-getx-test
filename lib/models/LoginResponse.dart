import 'package:get/get.dart';

//_
//_ Nice to convert from json strings responses to dart class :)
//_ https://javiercbk.github.io/json_to_dart/
// _
class LoginResponse {
  Success success;

  LoginResponse({this.success});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success =
        json['success'] != null ? new Success.fromJson(json['success']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.success != null) {
      data['success'] = this.success.toJson();
    }
    return data;
  }
}

class Success {
  var token = '';
  var userID = -1;
  var routeIcon = '';

  Success({this.token, this.userID, this.routeIcon});

  Success.fromJson(Map<String, dynamic> json) {
    this.token = json['token'] + '';
    this.userID = json['userID'] + 0;
    this.routeIcon = json['routeIcon'] + '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['userID'] = this.userID;
    data['routeIcon'] = this.routeIcon;
    return data;
  }
}
