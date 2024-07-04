import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/custombutton.dart';

class SettingContactUsScreen extends StatefulWidget {
  const SettingContactUsScreen({super.key});

  @override
  State<SettingContactUsScreen> createState() => _SettingContactUsScreenState();
}

class _SettingContactUsScreenState extends State<SettingContactUsScreen> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
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
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
         "Contact",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Row(children: [
             Obx(() =>  GestureDetector(
              onTap: (){
                homeguestcontroller.updatesettingcontactusfavouriteicon();
              },
               child: Icon(
               
                  homeguestcontroller.settingcontactusfavouriteicon.value ? Icons.favorite : 
                  Icons.favorite_border_outlined
                  
                  ,color: Color(0xff000000),size: 18.sp,),
             ),),
              SizedBox(width: 2.w,),
             Stack(children: [
                   
               Stack(
       clipBehavior: Clip.none,
          children: [
            Image.asset(
              "assets/images/carticon.png",
              height: 3.h, 
            ),
            Positioned(
              top: -10.sp, 
              right: -10.sp, 
              child: CircleAvatar(
                radius: 12.sp,
                backgroundColor: Color(0xff1375EA),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: const Color(0XFFFAFAFA),
                      fontSize: 12.sp, 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
             ],)
            ],),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 18,left: 18,bottom: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: Image.asset(
                    "assets/images/settingcontactusimage.png",
                    height: 30.h,
                    width: 50.w,
                  ),
            ),
              Text(
                    'Fill out our form and we will contact you within 24 hours.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Color(0xFFDBDBDB)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          offset: Offset(0, 9),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                       contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: InputBorder.none,
                        hintText: "Your Name",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xff474747)
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                   SizedBox(
                    height: 1.5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Color(0xFFDBDBDB)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          offset: Offset(0, 9),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                       contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: InputBorder.none,
                        hintText: "Your Phone",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xff474747)
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Color(0xFFDBDBDB)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          offset: Offset(0, 9),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      maxLines: 7,
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                        
                       contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                        border: InputBorder.none,
                        hintText: "Message",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xff474747)
                        ),
                      ),
                      onSaved: (value) {},
                    ),
                  ),

 SizedBox(
                    height: 2.h,
                  ),
                   RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Or Email at : ',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                  TextSpan(
                    text: 'customer@exclusive.com ',
                    style: TextStyle(
                       fontSize: 16.sp,
                       decoration: TextDecoration.underline,
                       decorationColor: Color(0xff2E3192),
                      color: Color(0xff2E3192),
                    ),
                  ),
                ],
              ),
            )
                 ,
SizedBox(
                    height: 7.h,
                  ),
                 custombutton(hinttext: 'Send'),
                 SizedBox(
                    height: 2.h,
                  ),
                  
          ],),
        ),
      )
    ,);
  }
}