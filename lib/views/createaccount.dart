import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';
import 'package:sms/customcomponents/customwidgets.dart';
import 'package:sms/customcomponents/passwordtextfield.dart';
import 'package:sms/views/forgotemailverification.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailTextEditingContoller = TextEditingController();
  TextEditingController passwordtextingcontroller = TextEditingController();
  TextEditingController phonnumbercontroller = TextEditingController();
  final isObsCure = true.obs;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              // key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Center(
                    child: ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1000),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.horizontal,
                      offset: 0.2,
                      child: Image.asset('assets/images/signinlogo.png'),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Center(
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                          color: Color(0xff1375EA),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Center(
                    child: Text(
                      'Enter you detail below',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  EmailCustomTextField(
                    editingController: emailTextEditingContoller,
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
                  ),
                  CustomTextFieldPassword(
                    hintText: 'Password',
                    controller: phonnumbercontroller,
                    callback: () {
                      isObsCure.value = isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password cant be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                  ),
                  CustomTextFieldPassword(
                    hintText: 'Confirm Password',
                    controller: passwordtextingcontroller,
                    callback: () {
                      isObsCure.value = !isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password can\'t be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                    prefixIcon: true, // Show prefix icon
                  ),
                  CustomTextFieldPassword(
                    hintText: 'Country or Region',
                    controller: passwordtextingcontroller,
                    callback: () {
                      isObsCure.value = !isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Country or Region can\'t be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                    prefixIcon: false, // Hide prefix icon
                  ),
                  CustomTextFieldPassword(
                    prefixIcon: false,
                    hintText: 'State/Province',
                    // hinttext: 'Confirm Password',
                    controller: passwordtextingcontroller,
                    callback: () {
                      isObsCure.value = isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password cant be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                  ),
                  CustomTextFieldPassword(
                    prefixIcon: false,
                    hintText: 'City',
                    // hinttext: 'Confirm Password',
                    controller: passwordtextingcontroller,
                    callback: () {
                      isObsCure.value = isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password cant be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                  ),
                  CustomTextFieldPassword(
                    prefixIcon: false,
                    hintText: 'Zip Code',
                    // hinttext: 'Confirm Password',
                    controller: passwordtextingcontroller,
                    callback: () {
                      isObsCure.value = isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password cant be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                  ),
                  CustomTextFieldPassword(
                    prefixIcon: false,
                    hintText: 'Street Address',
                    // hinttext: 'Confirm Password',
                    controller: passwordtextingcontroller,
                    callback: () {
                      isObsCure.value = isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password cant be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ElevetedButton(
                    buttonName: 'Continue',
                    textColor: Colors.white,
                    ontap: () async {
                      Get.toNamed(RouteConstants.setyourprofile);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Emailverification()),
                      // );
                    },
                    fontSize: 14,

                    width: MediaQuery.of(context).size.width * 0.92,
                    color: const Color(0xff2E3192),
                    // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Center(child: Text('Continue With')),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Center(
                    child: ElevetedButton(
                      buttonName: 'Login With Facebook',
                      textColor: Colors.white,
                      ontap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotEmailverification()),
                        );
                      },
                      fontSize: 14,

                      width: MediaQuery.of(context).size.width * 0.7,
                      color: const Color(0xff3B5998),
                      // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Center(
                    child: ElevetedButton(
                      buttonName: 'Login With Email',
                      textColor: Colors.black,
                      ontap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotEmailverification()),
                        );
                      },
                      fontSize: 14,
                      borderColor: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.7,
                      color: Colors.white,
                      // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(child: const Text('Already have an Account ')),
                  Center(
                    child: const Text(
                      'Login ',
                      style: TextStyle(color: Color(0xff2E3192)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
