import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_signin_signup_part2/controller/api_controller/sign_up.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/sign_in.dart';
class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();
  TextEditingController conframpassController = TextEditingController();
  RxBool isLoading = true.obs;
  RxBool isPasswordEnable =true.obs;

  signUpFun() async {
   // isLoading.value = true;
    bool status = await SignUpService.signUp(
        email: emailController.text,
        password: password1Controller.text,
        conframpasswordController: conframpassController.text,
        phone: phoneController.text);
    //isLoading.value = false;

    if (status) {
      Get.to(() => const SignIn());
      log("..................");
      return;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    password1Controller.dispose();
    conframpassController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
