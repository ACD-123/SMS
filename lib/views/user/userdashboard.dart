import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/custombutton.dart';

class UserDashboardScreen extends StatefulWidget {
  const UserDashboardScreen({super.key});

  @override
  State<UserDashboardScreen> createState() => _UserDashboardScreenState();
}

class _UserDashboardScreenState extends State<UserDashboardScreen> {
  final homecontroller = HomeGuestController(authRepo: Get.find());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteConstants.profilesettingscreen);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              radius: 25.sp,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                  'assets/images/sellerprofileimage.png'),
                            ),
                            Positioned(
                              right: 0,
                              top: 48,
                              child: Container(
                                width: 5.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2.07,
                                        offset: Offset(0, 2.07),
                                        color:
                                            Color(0xff000000).withOpacity(0.25))
                                  ],
                                  color: Color(0xffFFFFFF),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 13.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mathew Wade',
                                style: TextStyle(
                                    color: Color(0xff2E3192),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                'Hello Mathew',
                                style: TextStyle(
                                    color: Color(0xff2E3192),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.sp),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 21.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff000000).withOpacity(0.04),
                            offset: Offset(0, 3.57),
                            blurRadius: 10.7)
                      ],
                      borderRadius: BorderRadius.circular(7.13),
                      color: Color(0xff1375EA)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25, top: 17, right: 20, bottom: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 2.h,
                          child: Obx(
                            () => DropdownButton<String>(
                              value: homecontroller
                                  .usertodayspendingselectedmonth.value,
                              onChanged: (newValue) {
                                homecontroller.usertodayspendingselectedmonth
                                    .value = newValue!;
                              },
                              items:
                                  homecontroller.selectmonthslist.map((bank) {
                                return DropdownMenuItem<String>(
                                  value: bank,
                                  child: Text(
                                    bank,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                );
                              }).toList(),
                              underline: SizedBox(),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xffFFFFFF),
                                size: 17.sp,
                              ),
                              dropdownColor: Color(0xff1375EA),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Text(
                          'Total Spending',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$500.90',
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.sp),
                                ),
                                Text(
                                  '+15% month over month',
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      // fontWeight: FontWeight.w500,
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/sellerdashboardarrowline.png',
                              height: 6.h,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 21.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff000000).withOpacity(0.04),
                            offset: Offset(0, 3.57),
                            blurRadius: 10.7)
                      ],
                      borderRadius: BorderRadius.circular(7.13),
                      border: Border.all(color: Color(0xffE0E0E0)),
                      color: Color(0xffFFFFFF)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25, top: 17, right: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 2.h,
                          child: Obx(
                            () => DropdownButton<String>(
                              value: homecontroller
                                  .useritempurchaseselectedmonth.value,
                              onChanged: (newValue) {
                                homecontroller.useritempurchaseselectedmonth
                                    .value = newValue!;
                              },
                              items:
                                  homecontroller.selectmonthslist.map((bank) {
                                return DropdownMenuItem<String>(
                                  value: bank,
                                  child: Text(
                                    bank,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xff828282),
                                    ),
                                  ),
                                );
                              }).toList(),
                              underline: SizedBox(),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xff828282),
                                size: 17.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Text(
                          'Items Purchase',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '78',
                                  style: TextStyle(
                                      color: Color(0xff2E3192),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25.sp),
                                ),
                                Text(
                                  '+15% month over month',
                                  style: TextStyle(
                                      color: Color(0xff828282),
                                      // fontWeight: FontWeight.w500,
                                      fontSize: 16.sp),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/sellerdashboardarrowline.png',
                              height: 6.h,
                              color: Color(0xff2E3192),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Dashboard',
                  style: TextStyle(color: Color(0xff828282), fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                customdashboardcontainer(
                    title: 'Profile',
                    image: 'assets/images/Vector (3).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.profilesettingscreen);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Order History',
                    image: 'assets/images/sellerdashboardorderhistoryicon.png',
                    ontap: () {
                      Get.toNamed(RouteConstants.userorderhistory);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Change Password',
                    image: 'assets/images/Vector (8).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.changepasswordscreen);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Addresses',
                    image: 'assets/images/Vector (7).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.addressbookscreen);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Payment Setting',
                    image: 'assets/images/Vector (6).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.paymentmethodscreen);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Wishlist',
                    image: 'assets/images/Vector (5).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.wishlistscreen);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Contact Us',
                    image: 'assets/images/Vector (4).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.myprofilecontactus);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'Setting',
                    image: 'assets/images/sellerdashboardsettinicon.png',
                    ontap: () {
                      Get.toNamed(RouteConstants.settingscreen);
                    }),
                SizedBox(
                  height: 2.h,
                ),
                customdashboardcontainer(
                    title: 'FAQs',
                    image: 'assets/images/Vector (2).png',
                    ontap: () {
                      Get.toNamed(RouteConstants.faq);
                    }),
                SizedBox(
                  height: 5.h,
                ),
                custombutton(
                    hinttext: "Sign Out",
                    ontap: () {
                      Get.offAllNamed(RouteConstants.loginscreen);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//////custom dashboard container

GestureDetector customdashboardcontainer(
    {required String title,
    required String image,
    required VoidCallback ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: 7.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.1),
                offset: Offset(0, 8.75),
                blurRadius: 16.53)
          ],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xffDBDBDB)),
          color: Color(0xffFFFFFF)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  height: 2.5.h,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  title,
                  style: TextStyle(color: Color(0xff828282), fontSize: 15.sp),
                ),
              ],
            ),
            Image.asset(
              'assets/images/arrowforward.png',
              height: 2.5.h,
            ),
          ],
        ),
      ),
    ),
  );
}
