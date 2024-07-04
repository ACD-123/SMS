import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/customappbar.dart';
import 'package:sms/views/notifications/allnotifications.dart';
import 'package:sms/views/notifications/ordersnotifications.dart';
import 'package:sms/views/notifications/promotionalnotifications.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customappbar(title: "Notifications"),
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: TabBar(
                        
                        labelColor: Color(0xff2B2B2B),
                        unselectedLabelColor: Color(0xffCACACA),
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
                            child: Text("All"),
                          ),
                          Container(
                            height: 3.h,
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Text("Orders"),
                          ),
                          Container(
                            height: 3.h,
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Text("Promotional"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: Get.height,
                      child: TabBarView(
                        children: [
                          AllNotifications(),
                          OrdersNotifications(),
                          PromotionalNotifications()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}