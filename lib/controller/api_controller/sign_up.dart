import 'dart:developer';

import 'package:get/get.dart';

class SignUpService {
  static Future<bool> signUp({required String email,required String password,required String conframpasswordController,required String phone}) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      log("............111111..........");
      Get.snackbar("message", "SignUp Success");
      return true;
    } catch (e) {
      log("error :$e");
    }
    Get.snackbar("message", "Something Went Wrong");
    return false;
  }
}
