import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/views/returncancellation/rcancellationscreen.dart';
import 'package:sms/views/returncancellation/returnscreen.dart';

class ReturnCancellationScreen extends StatelessWidget {
  const ReturnCancellationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
   
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18.sp,
            )),
        centerTitle: true,
       
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    
                    labelColor: Color(0xff282828),
                    unselectedLabelColor: Color(0xffCACACA),
                    // indicatorPadding: EdgeInsets.all(0.0),
                    indicatorWeight: 3.0,
                    labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                    indicator: ShapeDecoration(
                      shape: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      color: Color(0xFF2E3192),
                      
                    ),
                    tabs: <Widget>[
                      Container(
                        height: 3.h,
                        alignment: Alignment.center,
                        
                        color: Colors.white,
                        child: Text("Return"),
                      ),
                      Container(
                        height: 3.h,
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Text("Cancellations"),
                      ),
                     
                    ],
                  ),
                  Container(
                    height: Get.height,
                    child: TabBarView(
                      children: [
                        ReturnScreen(),
                        RCancellationScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ),
    ),
      );
  }
}