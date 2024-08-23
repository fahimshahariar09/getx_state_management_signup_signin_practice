
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_signin_signup_part2/controller/api_controller/sign_in.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/product/product.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  signInFuncation() async {
    isLoading.value = true;
    bool status = await SignInService.signIn(
        email: emailController.text, password: passwordController.text);
    isLoading.value = false;

    if (status) {
      Get.to(() => const Product());
      return;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
