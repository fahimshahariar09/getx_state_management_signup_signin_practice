import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management_signin_signup_part2/controller/getx_controller/sign_in.dart';
import 'package:getx_state_management_signin_signup_part2/view/common_widget/common_button.dart';
import 'package:getx_state_management_signin_signup_part2/view/common_widget/common_loading_button.dart';
import 'package:getx_state_management_signin_signup_part2/view/common_widget/common_text.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/sign_up.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/widget/email_text_field.dart';
import 'package:getx_state_management_signin_signup_part2/view/screen/auth/authentication/widget/password_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: signInController.formKey,
              child: Column(
                children: [
                  buildSizedBox(height: 40),
                  const CommonText(
                    titel: "Sign In",
                    fSize: 22,
                    fWeight: FontWeight.bold,
                    fColor: Color(0xff29B6F6),
                  ),
                  buildSizedBox(height: 15),
                  SizedBox(
                      height: 145,
                      width: 145,
                      child: Image.asset("assets/images/login.png",fit: BoxFit.fill,)),
                  buildSizedBox(height: 50),
                  EmailTextField(
                    emailController: signInController.emailController,
                  ),
                  buildSizedBox(height: 15),
                  PasswordTextField(
                    passwordController: signInController.passwordController,
                  ),
                  buildSizedBox(height: 50),
                  Obx(() => signInController.isLoading.isFalse
                      ? CommonButton(
                          buttonName: "Sign In",
                          onTab: () {
                            if (!signInController.formKey.currentState!
                                .validate()) {
                              return;
                            } else {
                              signInController.signInFuncation();
                            }
                          },
                        )
                      : const CommonLoadingButton()),
                  buildSizedBox(height: 30),
                  // Don't have an Account ? sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CommonText(
                        titel: "Don't have an Account? ",
                        fColor: Colors.black54,
                        fSize: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(() => const SignUp());
                          },
                          child: const CommonText(
                            titel: "Sign Up",
                            fColor: Colors.red,
                            fSize: 15,
                          )),
                    ],
                  ),
                  buildSizedBox(height: 100),
                   const CommonText(titel: "Forget Password",fColor: Colors.black,fSize: 15,),
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
