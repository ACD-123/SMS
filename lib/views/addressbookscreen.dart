import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/customappbar.dart';
import 'package:sms/customcomponents/custombutton.dart';

class AddressBookScreen extends StatefulWidget {
  const AddressBookScreen({super.key});

  @override
  State<AddressBookScreen> createState() => _AddressBookScreenState();
}
 
class _AddressBookScreenState extends State<AddressBookScreen> {
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
            children: [
              Container(
                height: 6.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xffFFFFFF)),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteConstants.addressbookscreen3);
                  },
                  child: TextFormField(
                    enabled: false,
                    style: TextStyle(fontSize: 15.sp),
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        'assets/images/bookaddressaddnewicon.png',
                        scale: 1,
                      ),
                      contentPadding: const EdgeInsets.only(
                        right: 15,
                        left: 15,
                        top: 10,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      hintText: "Add New Address",
                      hintStyle:
                          TextStyle(fontSize: 15.sp, color: Color(0xFF474747)),
                    ),
                    onSaved: (value) {},
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              addressbookcontainer(
                  viewonmapontap: () {
                    Get.toNamed(RouteConstants.addressbookscreen2viewmap);
                  },
                  checkboxindex: 0,
                  title: "Home",
                  titleimage: 'assets/images/addressbookhomeicon.png',
                  address: "14500 Juanita Drive NEKenmore WA \n 98028-4966USA"),
              addressbookcontainer(
                  viewonmapontap: () {        Get.toNamed(RouteConstants.addressbookscreen2viewmap);},
                  checkboxindex: 1,
                  title: "Office",
                  titleimage: 'assets/images/addressbookofficeicon.png',
                  address: "14500 Juanita Drive NEKenmore WA \n 98028-4966USA"),
              addressbookcontainer(
                  viewonmapontap: () {        Get.toNamed(RouteConstants.addressbookscreen2viewmap);},
                  checkboxindex: 2,
                  title: "Other",
                  titleimage: 'assets/images/addressbookothermarkericon.png',
                  address: "14500 Juanita Drive NEKenmore WA \n 98028-4966USA"),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: custombutton(hinttext: "Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Padding addressbookcontainer({
  required VoidCallback viewonmapontap,
  required int checkboxindex,
  required String title,
  required String titleimage,
  required String address,
}) {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      height: 17.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xff2E3192), width: 1.5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 10, right: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  titleimage,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xff101010),
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                    tristate: false,
                    value: homeguestcontroller
                            .addressbookselectaddresscheckbox.value ==
                        checkboxindex,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.83),
                    ),
                    side: const BorderSide(color: Color(0xff2E3192)),
                    onChanged: (newValue) {
                      homeguestcontroller
                          .updateaddressbookselectaddresscheckbox(
                              checkboxindex);
                    },
                    activeColor: Color(0xff2E3192),
                  ),
                ),
              ],
            ),
            Text(
              address,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff2B2B2B),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kenmore",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff101010),
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: viewonmapontap,
                    child: Text(
                      "View on Map",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff0587E5),
                          fontWeight: FontWeight.w400,
                          decorationColor: Color(0xff0587E5),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
