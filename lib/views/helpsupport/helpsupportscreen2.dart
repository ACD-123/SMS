import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/customappbar.dart';

class HelpSupportScreen2 extends StatelessWidget {
  const HelpSupportScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customappbar(title: "Help & Support"),
    body: Padding(
      padding: const EdgeInsets.all(18),
      child: Column(children: [
        GestureDetector(
        onTap: (){
      
        },
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
                    Text("Become a Seller",style: TextStyle(color: Color(0xff474747),fontSize: 14.sp),),
                
                    
                    ],),
                  )
                  ),
                  
      ),
      SizedBox(height: 3.h,),
      Text("It's a well-known fact that a reader's attention will be diverted by the readable content on a page when assessing its layout. The advantage of using Lorem Ipsum is that it provides a relatively normal distribution of letters, unlike the repetitive making it resemble readable English. It's a well-known fact that a reader's attention will be diverted by the readable content on a page when assessing its layout.   The advantage of using Lorem Ipsum is that it provides a relatively normal distribution of letters, unlike the repetitive making it resemble readable English.",style: TextStyle(color: Color(0xff8D8D8D),fontSize: 14.sp),),
  SizedBox(height: 5.h,),
  Container(
    height: 13.h,
    width: 70.w,decoration: BoxDecoration(
   
   color: Color(0xffFFFFFF),
    boxShadow: [
      BoxShadow(
        blurRadius: 9,
        offset: Offset(0, 4),
        color: Color(0xff000000).withOpacity(0.1))
    ],
    borderRadius: BorderRadius.circular(13),
    border: Border.all(color: Color(0xffE3E3E3))),child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
        Text("Does this information solve your problem? ",style: TextStyle(color: Color(0xff757474),fontSize: 13.sp),),
        SizedBox(height: 2.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 3.5.h,
                        width: 28.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff2E3192)),
                      
                        child: Center(child: Text("Yes",style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xffFFFFFF),
                            ))),
                      ),
                    ),
                      GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 3.5.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff2E3192)),
                          borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffFFFFFF)),
                      
                        child: Center(child: Text("No",style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xff2E3192),
                            ))),
                      ),
                    ),
                    // ElevetedButton(buttonName: "Yes",height: 3.5.h,
                    //     width: 28.w,borderColor: Color(0xff2E3192),borderWidth: 1,)
                    
        ],)
      ],),
    ),)
      ],),
    ),
    
    
    );
  }
}


      