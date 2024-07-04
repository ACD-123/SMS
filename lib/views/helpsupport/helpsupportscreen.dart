
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/customappbar.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customappbar(title: "Help & Support"),body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(children: [

          customhelpsupportcontainer(title: "Become a Seller", ontap: (){

            Get.toNamed(RouteConstants.helpsupportscreen2);
          }),
          customhelpsupportcontainer(title: "Start Selling with Us", ontap: (){}),
          customhelpsupportcontainer(title: "Sell Your Products Here", ontap: (){

            
          },),
          customhelpsupportcontainer(title: "Reach Millions of Customers", ontap: (){
           
          }),
           customhelpsupportcontainer(title: "Join Our Seller Community", ontap: (){
           
          })
        
            ],),
      ),);
  }
}



///////////custom help&suppport container
Padding customhelpsupportcontainer({required String title,required VoidCallback ontap}){
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
                  Text(title,style: TextStyle(color: Color(0xff474747),fontSize: 14.sp),),
                 Icon(Icons.arrow_forward_ios_outlined,size: 17.sp,color: const Color(0xff2E3192),)
                  
                  ],),
                )
                ),
    ),
  );
}