import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/customappbar.dart';

class MyProfileContactus extends StatelessWidget {
  const MyProfileContactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(title: "Contact"),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Today',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff101010),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFFFFF),
                  border: Border.all(color: Color(0xFFDBDBDB)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      offset: Offset(0, 9),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: TextFormField(
                  enabled: false,
                  style: TextStyle(fontSize: 14.sp),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.call_outlined,
                      color: Color(0XFF2E3192),
                    ),
                    border: InputBorder.none,
                    hintText: "(123) -345 -789",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  onSaved: (value) {},
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFFFFF),
                  border: Border.all(color: Color(0xFFDBDBDB)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      offset: Offset(0, 9),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: TextFormField(
                   enabled: false,
                  style: TextStyle(fontSize: 14.sp),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Color(0XFF2E3192),
                    ),
                    border: InputBorder.none,
                    hintText: "Anderson@gmail.com",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  onSaved: (value) {},
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Social Media',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff101010),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              socialmediacontainers(
                  image: 'assets/images/facebookiconblack.png',
                  title: 'Facebook',
                  subtitle: 'Facebook.com/photouse'),
              SizedBox(
                height: 2.h,
              ),
              socialmediacontainers(
                  image: 'assets/images/instagramiconblack.png',
                  title: 'Instagram',
                  subtitle: 'Instagram.com/photouse'),
              SizedBox(
                height: 2.h,
              ),
              socialmediacontainers(
                  image: 'assets/images/twittericonblack.png',
                  title: 'Twitter',
                  subtitle: 'Twitter.com/photouse')
            ,
            SizedBox(
                height: 3.h,
              ),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff101010),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '14500 Juanita Drive NEKenmore WA \n 98028-4966USA - Kenmore',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff2B2B2B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////social media containers
Container socialmediacontainers({
  required String image,
  required String title,
  required String subtitle,
}) {
  return Container(
    height: 5.h,
    // color: Color.fromARGB(255, 241, 106, 106),
    child: Row(
      children: [
        Image.asset(
          image,
          height: 10.h,
          width: 10.w,
        ),
        SizedBox(
          width: 2.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title \n",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff101010),
                    ),
                  ),
                  TextSpan(
                    text: subtitle,
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Color(0xffA6A6A6),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
