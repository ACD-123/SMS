import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/authentictionController.dart';
import 'package:sms/customcomponents/customwidgets.dart';
import 'package:sms/customcomponents/passwordtextfield.dart';
import 'package:sms/widgets/textfieldforphone.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen() : super();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isEmailSelected = true;
  final loginController =
      Get.put(AuthenticationController(authRepo: Get.find()));
  bool _isChecked = false;
  @override
  void initState() {
    super.initState();
    loginController.emailController.clear();
    loginController.passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginController.formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(children: [
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1000),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.2,
                  child: Image.asset('assets/images/signinlogo.png'),
                ),
                SizedBox(
                  height: 2.h,
                ),
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 500),
                  animationDuration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Center(
                    child: const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1375EA),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 500),
                  animationDuration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Center(
                    child: const Text(
                      'Ready to start shopping. Login to get started',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.5.h,
                ),
                _isEmailSelected
                    ? EmailCustomTextField(
                        enabled: true,
                        editingController: loginController.emailController,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Email cant be empty';
                          } else if (!v.isEmail) {
                            return 'Invalid Email';
                          }
                          return null;
                        },
                        hintText: 'Email Address',
                        image: 'assets/images/emailiconlogin.png',
                      )
                    : const CustomTextFieldforPhone(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomTextFieldPassword(
                      image: 'assets/images/pasword.png',
                  hintText: 'Password',
                  // hintText: '',÷÷
                  controller: loginController.passwordController,
                  callback: () {
                    loginController.isObsCure.value =
                        !loginController.isObsCure.value;
                  },
                  fieldValidator: (v) {
                    if (v!.isEmpty) {
                      return 'Password cant be empty';
                    }
                    return null;
                  },
                  hiddenPassword: loginController.isObsCure.value,
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                           activeColor: Color(0xff1375EA),
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          // Checkbox(value: value, onChanged: onChanged)
                          const Text('Remember Me'),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RouteConstants.forgot);
                        },
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.5.h,
                ),
                Obx(() => loginController.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 500),
                        animationDuration: const Duration(milliseconds: 500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        direction: Direction.vertical,
                        offset: 0.5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 48,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 20.0, right: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                Get.offAllNamed(
                                    RouteConstants.userbottomnavbar);
                                // print('login button tapped');
                                // loginController.loginTapped();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff2E3192),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              )),
                        ))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 500),
                  animationDuration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Center(
                    child: const Text(
                      'Create an Account?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 500),
                  animationDuration: const Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(RouteConstants.signup);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => SignUpScreen()),
                        // );
                      },
                      child: const Text(
                        '  Sign Up',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2E3192),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget socialMediaContain(
    Color borderColor,
    String image,
  ) =>
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          border: Border.all(color: borderColor),
        ),
        child: Image.asset(image),
      );
}
