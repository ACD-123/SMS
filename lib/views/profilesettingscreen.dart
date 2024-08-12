import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/custombutton.dart';
import 'package:sms/customcomponents/customtextformfield.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
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
          "Profile Setting",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 19.h,
              child: Stack(
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
                    child: GestureDetector(
                      onTap: () {
                        homeguestcontroller.profileuploadprofileimage(context);
                      },
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color(0xffFFFFFF), width: 5),
                                ),
                                child: Obx(
                                  () => CircleAvatar(
                                    radius: 32.sp,
                                    backgroundImage: homeguestcontroller
                                                .profilesettinguploadedprofileImage
                                                .value !=
                                            null
                                        ? FileImage(homeguestcontroller
                                            .profilesettinguploadedprofileImage
                                            .value!)
                                        : const AssetImage(
                                                "assets/images/myprofileimage.png")
                                            as ImageProvider,
                                  ),
                                )),
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
                                child: Image.asset(
                                    'assets/images/myprofilecamera.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  customtextfield(hinttext: "First Name"),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  customtextfield(hinttext: "Last Name"),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  customtextfield(hinttext: "Email"),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  SizedBox(
                    height: 6.h,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Image.asset(
                            'assets/images/profilesettingediticon.png'),
                        fillColor: const Color(0XFFFFFFFF),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFDBDBDB), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFDBDBDB), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding: const EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Phone Number",
                        hintStyle: const TextStyle(color: Color(0xFF474747)),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  customtextfield(hinttext: "State/Province"),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  SizedBox(
                    height: 6.h,
                    child: Center(
                        child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        // suffixIcon: Icon(Icons.arrow_drop_down),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFDBDBDB), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFDBDBDB), width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: 10, right: 15, left: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Country",
                        hintStyle: const TextStyle(color: Color(0xFF474747)),
                      ),
                      value: selectcountry,
                      onChanged: (newValue) {
                        selectcountry = newValue!;
                      },
                      items: selectcountrylist.map((country) {
                        return DropdownMenuItem<String>(
                          value: country,
                          child: Text(
                            country,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff474747),
                            ),
                          ),
                        );
                      }).toList(),
                      icon: Image.asset(
                          'assets/images/profilesettingarrowdropdown.png'),
                    )),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  customtextfield(hinttext: "City"),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  customtextfield(hinttext: "Address"),
                  SizedBox(
                    height: 7.h,
                  ),
                  custombutton(hinttext: "Save"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

////////country dropdown list
String? selectcountry;
final List<String> selectcountrylist = [
  "USA",
  "Germany",
  "France",
];
