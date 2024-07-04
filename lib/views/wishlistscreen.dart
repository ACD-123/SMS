import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/customappbar.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customappbar(title: "Wishlist"),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.59),
                            color: const Color(0xffEEEAEA)),
                        child: GestureDetector(
                          onTap: () {
                          },
                          child: TextFormField(
                            style: TextStyle(fontSize: 14.sp),
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                'assets/images/homesearchicon.png',
                                scale: 1.5,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  right: 15, left: 15, top: 10, bottom: 12),
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              hintText: "What are you looking for?",
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            onSaved: (value) {},
                          ),
                        ),
                      ),
          SizedBox(height: 3.h,),
                       Text(
                "My Favorite (23) ",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff101010),
                  height: 0.9,
                ),
              ),SizedBox(height: 2.h,),
              GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:
                        wishlistproductgridlist.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 15,
                              childAspectRatio: 0.68,
                              mainAxisSpacing: 20,
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        final wishlistproductsdata =
                         wishlistproductgridlist[index];
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteConstants.productdetailscreen);
                          },
                          child: Container(
                            height: 29.h,
                            width: 30.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 15.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xff000000)
                                              .withOpacity(0.2))),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: Image.asset(
                                            wishlistproductsdata['image'],
                                            height: 15.h,
                                            width: 30.w,
                                            // fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                       wishlistproductsdata['isbanner']      == true ?           Positioned(
                                    top: 12,
                                    left:0,
                                    child: Container(
                                      height: 2.2.h,
                                      width: 12.w,
                                      decoration:  BoxDecoration(
                                          color: Color(0xff484BA0),
                                          borderRadius: const  BorderRadius.only(
                                              topRight: Radius.circular(4.92),
                                              bottomRight: Radius.circular(4.92))),
                                      child: Center(
                                          child: Text(
                                         wishlistproductsdata['istoprated'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.sp),
                                      )),
                                    ),
                                  ) : SizedBox()
                                    ],
                                  ),
                                ),
                                Text(
                                  wishlistproductsdata['name'],
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text(wishlistproductsdata['price'],
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xff2E3192),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      width: 0.5.w,
                                    ),
                                    Text(wishlistproductsdata['discountprice'],
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Color(0xff2E3192),
                                            decorationColor: Color(0xff2E3192),
                                            decoration:
                                                TextDecoration.lineThrough))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                        children: List.generate(
                                            5,
                                            (index) => Icon(
                                                  Icons.star_purple500_sharp,
                                                  color: const Color(0xffFFAD33),
                                                  size: 13.sp,
                                                ))),
                                    SizedBox(
                                      width: 0.5.w,
                                    ),
                                    Text(wishlistproductsdata['ratings'],
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
          ],),
        ),
      ),
    );
  }
}




/////////////wishlist product gridlist
  List<Map<String, dynamic>> wishlistproductgridlist =
[
    {
     "name": "Shoes",
     "isbanner": true,
     "istoprated":"50% OFF",
     "image": 'assets/images/homeexploreproduct4.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
     "name": "Gamepad",
     "isbanner": false,
     "istoprated":"Top Rated",
      "image": 'assets/images/homeexploreproduct5.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
     "name": "Jacket",
     "isbanner": false,
     "istoprated":"Top Rated",
      "image": 'assets/images/homeexploreproduct6.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
      "name": "Shoes",
      "isbanner": false,
  "istoprated":"50% OFF",
      "image": 'assets/images/homeexploreproduct4.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
      "name": "Gamepad",
      "isbanner": false,
        "istoprated":"50% OFF",
      "image": 'assets/images/homeexploreproduct5.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
      "name": "Jacket",
      "isbanner": false,
        "istoprated":"50% OFF",
      "image": 'assets/images/homeexploreproduct6.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
     "name": "Shoes",
     "isbanner": false,
       "istoprated":"50% OFF",
     "image": 'assets/images/homeexploreproduct4.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
     "name": "Gamepad",
     "isbanner": false,
       "istoprated":"50% OFF",
      "image": 'assets/images/homeexploreproduct5.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
     "name": "Jacket",
     "isbanner": true,
          "istoprated":"Top Rated",
      "image": 'assets/images/homeexploreproduct6.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
      "name": "Shoes",
      "isbanner": false,
           "istoprated":"Top Rated",
      "image": 'assets/images/homeexploreproduct4.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
      "name": "Gamepad",
      "isbanner": false,
           "istoprated":"Top Rated",
      "image": 'assets/images/homeexploreproduct5.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
    {
      "name": "Jacket",
      "isbanner": false,
           "istoprated":"Top Rated",
      "image": 'assets/images/homeexploreproduct6.png',
      "ratings": "(65)",
      "price": "\$260",
      "discountprice": "\$360"
    },
  ];