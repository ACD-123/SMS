import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/custombutton.dart';
import 'package:sms/customcomponents/customtextformfield.dart';
import 'package:sms/customcomponents/whitecustomdialogpopup.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18.sp,
            )),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Change Password",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(height: 19.h,
           child:  Stack(
              
              children: [
                Container(
                  height: 14.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/myprofilebackgroundimage.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(65)),
                  ),
                ),
                Positioned(
                  top: 3.h,
                  left: 35.w,
                  right: 35.w,
                  child: Center(
                    child: Container(
                       decoration: BoxDecoration(shape: BoxShape.circle,
                          border: Border.all(color: Color(0xffFFFFFF),width: 5)),
                      child: CircleAvatar(
                        radius: 32.sp,
                        backgroundImage:
                            AssetImage("assets/images/myprofileimage.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),),
             SizedBox(
              height: 0.5.h,
            ),
            Text(
              "Mathew Wade",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                color: Color(0XFF2E3192),
                height: 0.9,
              ),
            ),
             SizedBox(
              height: 2.h,
            ),
           Padding(
             padding: const EdgeInsets.all(18),
             child: Column(children: [
              customtextfield(hinttext: "Current Password"),
              SizedBox(height:1.5.h,),
               customtextfield(hinttext: "New Password"),
                   SizedBox(height:1.5.h,),
                customtextfield(hinttext: "Confirm New Password"),
                    SizedBox(height:3.h,),

                    custombutton(
                      ontap: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return customsuccessalertpopup(message: "Password Successfully Changed");
                        });
                      },
                      hinttext: "Changed")
             ],),
           )

          ],
        ),
      ),
    );
  }
}
