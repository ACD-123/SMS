import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/customappbar.dart';

class NotificationsSettingScreen extends StatefulWidget {
  const NotificationsSettingScreen({super.key});

  @override
  State<NotificationsSettingScreen> createState() => _NotificationsSettingScreenState();
}

class _NotificationsSettingScreenState extends State<NotificationsSettingScreen> {
   final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: customappbar(title: "Notifications"),body: Padding(
      padding: const EdgeInsets.all(18),
      child: Obx(() => 
      Column(children: [

        customrowsettingbuttons(title: "Message received", subtitle: "It is a long established fact that a reader will be distracted by the \n readable content of a page when looking at its layout",
         value: homeguestcontroller.notificationsettingswitchmessagereceived.value, onchanged: (value){
                homeguestcontroller.updatenotificationsettingswitchmessagereceivedbutton(value);
                
              }),
               Divider(color: Color(0xffE1E1E1),),
 customrowsettingbuttons(title: "All orders Notifications", subtitle: "It is a long established fact that a reader will be distracted by the \n readable content of a page when looking at its layout",
         value: homeguestcontroller.notificationsettingswitchAllorders.value, onchanged: (value){
                homeguestcontroller.updatenotificationsettingswitchAllorders(value);
                
              }),
                  Divider(color: Color(0xffE1E1E1),), customrowsettingbuttons(title: "Promotional Notifications", subtitle: "It is a long established fact that a reader will be distracted by the \n readable content of a page when looking at its layout",
         value: homeguestcontroller.notificationsettingswitcPromotional.value, onchanged: (value){
                homeguestcontroller.updatenotificationsettingswitcPromotional(value);
                
              }),   Divider(color: Color(0xffE1E1E1),),customrowsettingbuttons(title: "Popup Notifications", subtitle: "It is a long established fact that a reader will be distracted by the \n readable content of a page when looking at its layout",
         value: homeguestcontroller.notificationsettingswitchPopup.value, onchanged: (value){
                homeguestcontroller.updatenotificationsettingswitchPopup(value);
                
              }),  Divider(color: Color(0xffE1E1E1),), customrowsettingbuttons(title: "Chats Notifications", subtitle: "It is a long established fact that a reader will be distracted by the \n readable content of a page when looking at its layout",
         value: homeguestcontroller.notificationsettingswitchChats.value, onchanged: (value){
                homeguestcontroller.updatenotificationsettingswitchChats(value);
                
              }),
        
      ],),
      )
    ),);
  }
}



//////////////////////////////////custom notification settings
Padding customrowsettingbuttons({required String title,required String subtitle,required bool value,required Function(bool) onchanged}){
  return  Padding(
    padding: const EdgeInsets.only(top: 6),
    child: Container(
      
      
      height: 9.h,child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(title,style: TextStyle(color: Color(0xff0B0B0B),fontSize: 15.sp)),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(subtitle,style: TextStyle(color: Color(0xff757474),fontSize: 12.sp)),
             Transform.scale(
              scale: 3.5.sp,
               child: Switch(
                  
                  value: value, onChanged: onchanged,
               
                inactiveThumbColor: Color(0xffFFFFFF),
                inactiveTrackColor: Color(0xff86868D),
                activeTrackColor: Color(0xff2E3192),
               ),
             )
             ],),
            
          ],),),
  );
}