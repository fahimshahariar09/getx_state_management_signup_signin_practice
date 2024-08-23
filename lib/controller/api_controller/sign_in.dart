import 'dart:developer';

import 'package:get/get.dart';

class SignInService {
  static Future<bool> signIn({required String email,required String password}) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      log("............111111..........");
      if(email=="fahim@gmail.com" && password =="12345678"){
        Get.snackbar("message", "Login Success");
        return true;
      }else{
        Get.snackbar("message", "Login Failed");
        return false;
      }
    } catch (e) {
      log("error :$e");
    }
    Get.snackbar("message", "Something Went Wrong");
    return false;
  }
}
