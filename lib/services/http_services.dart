import 'dart:convert';
import 'dart:developer';

import 'package:electi_test/controller/core/const_uri/const_uri.dart';
import 'package:electi_test/model/user_model_class.dart';
import 'package:http/http.dart' as http;

class UserServiceClass {
  Future<UserModelClass?> getUserData() async {
    var responce = await http.get(Uri.parse(ConstUsersUri.usersUri));

    try {
      if (responce.statusCode == 200) {
        final data = jsonDecode(responce.body);
        return UserModelClass.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
