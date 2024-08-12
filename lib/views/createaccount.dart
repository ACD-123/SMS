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
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController phonnumbercontroller = TextEditingController();
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController countryregioncontroller = TextEditingController();
  TextEditingController stateprovincecontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController zipcodecontroller = TextEditingController();
  TextEditingController streetaddrescontroller = TextEditingController();
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
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  EmailCustomTextField(
                    editingController: fullnamecontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Full Name can\'t be empty';
                      }
                      return null;
                    },
                    hintText: 'Full Name',
                    image: 'assets/images/fullnameicon.png',
                  ),

                  EmailCustomTextField(
                    editingController: emailTextEditingContoller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Email can\'t be empty';
                      } else if (!v.isEmail) {
                        return 'Invalid Email';
                      }

                      return null;
                    },
                    hintText: 'Email Address',
                    image: 'assets/images/emailiconlogin.png',
                  ),
                  EmailCustomTextField(
                    editingController: phonnumbercontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Phone Number can\'t be empty';
                      }
                      return null;
                    },
                    hintText: 'Phone Number',
                    image: 'assets/images/phonenumbericon.png',
                  ),
                  CustomTextFieldPassword(
                    image: 'assets/images/pasword.png',
                    hintText: 'Password',
                    controller: passwordcontroller,
                    callback: () {
                      isObsCure.value = isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Password can\'t be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                  ),
                  CustomTextFieldPassword(
                    image: 'assets/images/pasword.png',
                    hintText: 'Confirm Password',
                    controller: confirmpasswordcontroller,
                    callback: () {
                      isObsCure.value = !isObsCure.value;
                    },
                    fieldValidator: (v) {
                      if (v!.isEmpty) {
                        return 'Confirm Password can\'t be empty';
                      }
                      return null;
                    },
                    hiddenPassword: isObsCure.value,
                    prefixIcon: true, // Show prefix icon
                  ),
                  EmailCustomTextField(
                    editingController: streetaddrescontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Street Address can\'t be empty';
                      }

                      return null;
                    },
                    hintText: 'Street Address',
                    image: 'assets/images/streetaddresicon.png',
                  ),
                  EmailCustomTextField(
                      editingController: countryregioncontroller,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'Country or Region can\'t be empty';
                        }

                        return null;
                      },
                      hintText: 'Country or Region',
                      image: 'assets/images/countryregionicon.png'),
                  EmailCustomTextField(
                    editingController: stateprovincecontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'State/Province can\'t be empty';
                      }

                      return null;
                    },
                    hintText: 'State/Province',
                    image: 'assets/images/stateprovineicon.png',
                  ),
                  EmailCustomTextField(
                    editingController: citycontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'City cant be empty';
                      }

                      return null;
                    },
                    hintText: 'City',
                    image: 'assets/images/cityicon.png',
                  ),
                  EmailCustomTextField(
                    editingController: zipcodecontroller,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return 'Zip Code can\'t be empty';
                      }

                      return null;
                    },
                    hintText: 'Zip Code',
                    image: 'assets/images/zipcodeicon.png',
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
                  // const Center(child: Text('Continue With')),
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
                      buttonName: 'Login With Google',
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
