
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PromotionalNotifications extends StatelessWidget {
  const PromotionalNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffA39A9A)),
            ),
            imagecardnotificaions(
                icon: "assets/images/buyonegetonenotificationicon.png",
                title: "Buy any one product and get one free!",
                time: "9:35 am",
                backgorundimage:
                    "assets/images/buyonegetonenotificationbackgicon.png"),
            SizedBox(
              height: 2.h,
            ),
            Divider(),
            SizedBox(
              height: 2.h,
            ),
            imagecardnotificaions(
                icon: "assets/images/yourchoicenotificationicon.png",
                title: "Your Choose",
                time: "9:35 am",
                backgorundimage:
                    "assets/images/yourchoicenotificationbackgicon.png"),
                     SizedBox(
              height: 2.h,
            ),
              
          ],
        ),
      ),
    );
  }
}


///////notification image containers
Container imagecardnotificaions(
    {required String icon,
    required String title,
    required String time,
    required String backgorundimage}) {
  return Container(
    height: 20.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    icon,
                    height: 5.h,
                    width: 5.w,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff777777)),
                  ),
                ],
              ),
              Text(
                time,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000).withOpacity(0.3)),
              ),
            ],
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                backgorundimage,
                height: 15.h,
                fit: BoxFit.fill,
              ))
        ],
      ),
    ),
  );
}
