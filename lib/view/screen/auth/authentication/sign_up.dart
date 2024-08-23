import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_signin_signup_part2/controller/getx_controller/sign_up.dart';
import 'package:getx_state_management_signin_signup_part2/view/common_widget/common_button.dart';
import 'package:getx_state_management_signin_signup_part2/view/common_widget/common_loading_button.dart';
import 'package:getx_state_management_signin_signup_part2/view/common_widget/common_text.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/widget/conframpass_text_field.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/widget/email_text_field.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/widget/password_text_field.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/widget/phone_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signupController = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: signupController.formKey,
              child: Column(
                children: [
                  buildSizedBox(height: 15
                  ),
                  const CommonText(titel: "Sign UP",fSize: 22,fWeight: FontWeight.bold,fColor: Color(0xff29B6F6),),
                  buildSizedBox(height: 50),
                  EmailTextField(
                    emailController: signupController.emailController,
                  ),
                  buildSizedBox(height: 15),
                  PhoneTextField(
                    phoneController: signupController.phoneController,
                  ),
                  buildSizedBox(height: 15),
                  PasswordTextField(
                    passwordController: signupController.password1Controller,
                  ),
                  buildSizedBox(height: 15),
                  ConframpassTextField(
                    conframpassword: signupController.conframpassController,
                  ),
                  buildSizedBox(height: 50),
                  Obx(() => signupController.isLoading.isTrue
                      ? CommonButton(
                          buttonName: "Sign Up",
                          onTab: () {
                            if (!signupController.formKey.currentState!
                                .validate()) {
                              return;
                            } else {
                              signupController.signUpFun();
                            }
                          },
                        )
                      : const CommonLoadingButton()),
                  buildSizedBox(height: 100),
                   const CommonText(titel: "You are completely safe.",fColor: Colors.black,),
                   const CommonText(titel: "Read our Terms & Conditions..",fColor: Color(0xff29B6F6),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({
    double? height,
    double? width,
  }) =>
      SizedBox(
        height: height,
        width: width,
      );
}
