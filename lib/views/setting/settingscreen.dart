import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/customappbar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customappbar(title: "Setting"),body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(children: [

          customsettingcontainer(title: "Currency", ontap: (){},subtitle: "USD"),
          // customsettingcontainer(title: "Language", ontap: (){},subtitle: "UK English"),
          customsettingcontainer(title: "Notifications Setting", ontap: (){

            Get.toNamed(RouteConstants.notificationsetting);
          },),
          customsettingcontainer(title: "Contact Us", ontap: (){
            Get.toNamed(RouteConstants.settingcontactusscreen);
          })
        
            ],),
      ),);
  }
}



///////////custom setting container
Padding customsettingcontainer({required String title,String? subtitle,required VoidCallback ontap}){
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: GestureDetector(
      onTap: ontap,
      child: Container(
              
              height: 6.h,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.06),
                    blurRadius: 10,
                     offset: const Offset(0, 9),
      
                  )
                ],
                border: Border.all(color: const Color(0xffDBDBDB)),
                borderRadius: BorderRadius.circular(20)),
                
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                  Text(title,style: TextStyle(color: Color(0xff474747),fontSize: 15.sp),),
                  Row(children: [
                    Text(subtitle ?? "",style: TextStyle(color: Color(0xff474747),fontSize: 15.sp)),
                    SizedBox(width: 2.w,),
                    Icon(Icons.arrow_forward_ios_outlined,size: 17.sp,color: const Color(0xff2E3192),)
                  ],)
                  
                  ],),
                )
                ),
    ),
  );
}