import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/customappbar.dart';
import 'package:sms/customcomponents/custombutton.dart';

class AddressBookScreen3 extends StatefulWidget {
  const AddressBookScreen3({super.key});

  @override
  State<AddressBookScreen3> createState() => _AddressBookScreen3State();
}

class _AddressBookScreen3State extends State<AddressBookScreen3> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(title: "Address Book"),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 22.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/addressbookaddnewaddresmapimage.png"),
                        fit: BoxFit.fill),
                    border: Border.all(color: Color(0xff2E3192), width: 2),
                    borderRadius: BorderRadius.circular(14.38)),
                child: Center(
                    child: Icon(Icons.place,
                        size: 35.sp, color: Color(0xff2E3192))),
              ),
              SizedBox(height: 2.h),
              Text(
                "Select Address Type",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272727)),
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        homeguestcontroller.updataddnewaddresselectadrestype(0);
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return enteraddrestype();
                            });
                      },
                      child: Container(
                        height: 6.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: homeguestcontroller
                                            .addnewaddresselecradrestype
                                            .value ==
                                        0
                                    ? Color(0xff2E3192)
                                    : Color(0xffDBDBDB)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/images/bookaddressaddnewicon.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  containerselectaddrestype("Home", 1),
                  SizedBox(
                    width: 3.w,
                  ),
                  containerselectaddrestype("Office", 2),
                  SizedBox(
                    width: 3.w,
                  ),
                  containerselectaddrestype("Other", 3),
                ],
              ),
              SizedBox(height: 2.h),
              SizedBox(
                height: 6.h,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: const Color(0XFFFFFFFF),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFFDBDBDB), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFFDBDBDB), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: const EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "City",
                    hintStyle: const TextStyle(color: Color(0xFF474747)),
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              SizedBox(
                height: 6.h,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: const Color(0XFFFFFFFF),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFFDBDBDB), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xFFDBDBDB), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: const EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Address",
                    hintStyle: const TextStyle(color: Color(0xFF474747)),
                  ),
                ),
              ),
              SizedBox(height: 21.h),
              custombutton(hinttext: "Save")
            ],
          ),
        ),
      ),
    );
  }
}

///////container selectaddres type
GestureDetector containerselectaddrestype(String title, int index) {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  return GestureDetector(
      onTap: () {
        homeguestcontroller.updataddnewaddresselectadrestype(index);
      },
      child: Obx(
        () => Container(
          height: 6.h,
          width: 20.w,
          decoration: BoxDecoration(
              border: Border.all(
                  color:
                      homeguestcontroller.addnewaddresselecradrestype.value ==
                              index
                          ? Color(0xff2E3192)
                          : Color(0xffDBDBDB)),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight:
                      homeguestcontroller.addnewaddresselecradrestype.value ==
                              index
                          ? FontWeight.bold
                          : FontWeight.w400,
                  color:
                      homeguestcontroller.addnewaddresselecradrestype.value ==
                              index
                          ? Color(0xff2E3192)
                          : Color(0xff272727)),
            ),
          ),
        ),
      ));
}

////////////enter adres type alertdialog
AlertDialog enteraddrestype() {
  return AlertDialog(
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero,
    content: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            color: const Color(0xFF000000).withOpacity(0.3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 2.h),
            SizedBox(
              height: 6.h,
              width: 82.w,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: const Color(0XFFFFFFFF),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFDBDBDB), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFDBDBDB), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.all(15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter Address Type....",
                  hintStyle: const TextStyle(color: Color(0xFF656565)),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 5.h,
                width: 82.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2E3192)),
                child: Center(
                    child: Text("Add Type",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Color(0xffFFFFFF),
                        ))),
              ),
            ),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    ),
  );
}
