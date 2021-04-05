import 'package:get/get.dart';
import 'package:test1/models/LoginResponse.dart';
import 'constants.dart';

class AppService extends GetxService {
  var loginData = LoginResponse().obs;

  Future<AppService> init() async {
    return this;
  }
}
