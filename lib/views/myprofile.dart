import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/custombutton.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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
          "My Profile",
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
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                           decoration: BoxDecoration(shape: BoxShape.circle,
                              border: Border.all(color: Color(0xffFFFFFF),width: 5)),
                          child: CircleAvatar(
                            radius: 32.sp,
                            backgroundImage:
                                AssetImage("assets/images/myprofileimage.png"),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 3,
                          child: Container(
                            width: 8.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                              color: Color(0xff2E3192),
                              shape: BoxShape.circle,
                            ),
                            child:
                                Image.asset('assets/images/myprofilecamera.png'),
                          ),
                        ),
                      ],
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
            Text(
              "Joined since : 2022",
              style: TextStyle(fontSize: 13.sp, color: Color(0XFF757474)),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: GridView.builder(
                physics:const  NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: myprofilegridlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                mainAxisSpacing:12,
                crossAxisCount: 3),
              
               itemBuilder: ((context, index) {
                final myprofilegridlistdata = myprofilegridlist[index];
                return 
                GestureDetector(
                  onTap: (){
                    Get.toNamed(myprofilegridlistdata["ontap"]);
                  },
                  child: Container(
                  height: 15.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                         myprofilegridlistdata["backgroundimage"],
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3.94)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 4.h,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                              myprofilegridlistdata["image"],)),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5,left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              myprofilegridlistdata["name"],
                              style: TextStyle(
                                  fontSize: 12.sp, color: Color(0XFFFFFFFF)),
                            ),
                            // SizedBox(
                            //   width: 0.5.w,
                            // ),
                            Icon(Icons.arrow_forward_ios_outlined,
                                size: 12.sp, color: Color(0XFFFFFFFF))
                          ],
                        ),
                      )
                    ],
                  ),
                              ),
                );
              })),
            ),
      
      
             
            SizedBox(height: 7.h,),
            Padding(
               padding: const EdgeInsets.all(18),
              child: custombutton(hinttext: "Sign Out",
              ontap: (){
                Get.offAllNamed(RouteConstants.loginscreen);
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List<Map<String,dynamic>> myprofilegridlist = [
  {
    "ontap":RouteConstants.profilesettingscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage1.png",
    "image":"assets/images/myprofileprofilesettingimage.png",
    "name":"Profile Setting",
  },
   {
    "ontap":RouteConstants.changepasswordscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage2.png",
    "image":"assets/images/myprofilechangepasswordimage.png",
    "name":"Change Password",
  },
   {
   "ontap":RouteConstants.addressbookscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage3.png",
    "image":"assets/images/myprofileaddressbookimage.png",
    "name":"Address Book",
  },
   {
    "ontap":RouteConstants.paymentmethodscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage4.png",
    "image":"assets/images/myprofilepaymentsettingimage.png",
    "name":"Payment Setting",
  },
   {
    "ontap":RouteConstants.returncancellationscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage5.png",
    "image":"assets/images/myprofilereturn&cancellationimage.png",
    "name":"Return & Cancellation",
  },
  {
    "ontap":RouteConstants.wishlistscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage6.png",
    "image":"assets/images/myprofilewishlistimage.png",
    "name":"Wishlist",
  },
  {
    "ontap":RouteConstants.myprofilecontactus,
    "backgroundimage":"assets/images/myprofilegridviewimage7.png",
    "image":"assets/images/myprofilecontactusimage.png",
    "name":"Contact Us",
  },

  {
    "ontap":RouteConstants.settingscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage8.png",
    "image":"assets/images/myprofilesettingimage.png",
    "name":"Setting",
  },
   {
    "ontap":RouteConstants.helpsupportscreen,
    "backgroundimage":"assets/images/myprofilegridviewimage9.png",
    "image":"assets/images/myprofilehelpsupportimage.png",
    "name":"Help & support",
  }
];