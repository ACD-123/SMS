import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/custom_popup_dialogwhite.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({super.key});
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  bool _isObscure2 = true;
  bool rememberMe = false;
  void showSuccessDialogAndNavigateToLogin(context) {
    Get.dialog(
      WhiteCustomPopupDialog(
        message: 'Password Successfully Setup',
        image: 'assets/images/sms 5.png',
      ),
    );

    // Delay for 1 second
    Future.delayed(Duration(seconds: 1), () {
      Get.toNamed(RouteConstants.loginscreen);
    });
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isObscure2 = !_isObscure2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0.0, // Remove the shadow
        title: Padding(
          padding: EdgeInsets.only(top: 8.0), // Adjust the padding as needed
          child: Text(
            'Setup Password',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ), // Your app bar title
        leading: Padding(
          padding: EdgeInsets.only(top: 10.0, right: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/arrowback1.png',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          // key: changePassController.formKey,
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              TextFormField(
                cursorColor: Colors.green,
                obscureText: _isObscure, // Set this property to true
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: _togglePasswordVisibility,
                    child: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Password',
                  // filled: true, //<-- SEE HERE
                  // fillColor: Colors.whiteColor,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                ),
                validator: (password) {
                  if (password == null || password.isEmpty) {
                    return "Please Enter Password";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // controller://
                // changePassController.
                // PasswordController.value,
                // controller: changePassController.newPasswordController,
                // onChanged: (value) =>
                // controller.confirmpassword.value = value,
                obscureText: _isObscure2, // Set this property to true
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: _toggleConfirmPasswordVisibility,
                    child: Icon(
                      _isObscure2 ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                ),
                validator: (conpassword) {
                  // if (conpassword !=
                  //     changePassController.passwordController.value.text) {
                  //   return "Password Does Not match";
                  // }

                  return null;
                },
              ),
              SizedBox(
                height: 35,
              ),
              // InkWell(
              //   child: Text('try'),
              //   onTap: () {
              //     changePassController.changePassTap(
              //       password: passwordController.text,
              //       confirmpassword: confirmPasswordController.text,
              //     );
              //   },
              // ),
              // Obx(
              //   () => changePassController.changeloading.value
              // ? Center(child: const CircularProgressIndicator())
              // :
              ElevetedButton(
                color: Color(0xff2E3192),
                buttonName: 'Confirm',
                textColor: Colors.white,
                ontap: () async {
                  showSuccessDialogAndNavigateToLogin(context);
                  // Get.toNamed(RouteConstants.setyourprofile);
                },
                fontSize: 14,
                width: MediaQuery.of(context).size.width,
                // color: const Color(0xff2E3192),
                // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
