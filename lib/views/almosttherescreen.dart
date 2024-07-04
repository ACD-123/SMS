import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/custombutton.dart';

class AlmostThereScreen extends StatelessWidget {
  const AlmostThereScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: 
     AppBar(
    elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18.sp,
            )),
      
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 18,left: 18,top: 10.h,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("Almost there",style: TextStyle(color: Color(0xff1375EA),fontSize: 23.sp,fontWeight: FontWeight.w700),),
         
        
           RichText(
          textAlign: TextAlign.center, 
          text: TextSpan(
            children: [
              TextSpan(
                text: "In order to proceed, you'll need to login or \n",
                style: TextStyle(color: Color(0xff8A8484), fontSize: 15.sp),
              ),
              TextSpan(
                text: "need to create an account.",
                style: TextStyle(color: Color(0xff8A8484), fontSize: 15.sp),
              ),
            ],
          ),),
           
           SizedBox(height: 4.h,),
           custombutton(hinttext: "Continue")
        ],),
      ),
      
      );
  }
}