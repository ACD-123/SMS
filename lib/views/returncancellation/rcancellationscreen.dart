import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RCancellationScreen extends StatelessWidget {
  const RCancellationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Column(
        children: [
           GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: rcancellationproductsgridlist.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 15,
                        childAspectRatio: 0.82,
                        mainAxisSpacing: 14,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final rcancellationproductsdata =
                          rcancellationproductsgridlist[index];
                      return GestureDetector(
                        onTap: () {
                          // Get.toNamed(RouteConstants.productdetailscreen);
                        },
                        child: Container(
                            
                          height: 34.h,
                          width: 50.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(children: [
                                Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7.53),
                                  child: Image.asset(
                                    rcancellationproductsdata['image'],
                                    height: 20.h,
                                    width: 50.w,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                               Positioned(
                                    top: 9,
                                    left: 4,
                                    child: Container(
                                      height: 2.5.h,
                                      width: 15.w,
                                      decoration:  BoxDecoration(
                                          color: Color(rcancellationproductsdata['isretuncolor']),
                                          borderRadius: const  BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10))),
                                      child: Center(
                                          child: Text(
                                        rcancellationproductsdata['isretuntitle'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp),
                                      )),
                                    ),
                                  ),
                              ],),
                              Text(
                                rcancellationproductsdata['name'],
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(rcancellationproductsdata['price'],
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color(0xff2E3192),
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    width: 0.5.w,
                                  ),
                                  Text(rcancellationproductsdata['discountprice'],
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff2E3192),
                                          decorationColor: Color(0xff2E3192),
                                          decoration: TextDecoration.lineThrough))
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
                                                size: 15.sp,
                                              ))),
                                  SizedBox(
                                    width: 0.5.w,
                                  ),
                                  Text(rcancellationproductsdata['ratings'],
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
        ],
      ),
    ),);
  }
}


//////rcancellation screen grid list
List<Map<String, dynamic>> rcancellationproductsgridlist = [
  {
    "name": "Handbags",
    "price": '\$260',
    "isretuncolor":0xff2E3192,
    "isretuntitle":"In Process",
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag7.png",
    "ratings": '(65)',
  },
  {
    "name": "Female Handbags",
    "price": '\$260',
    "isretuncolor":0xffFE3A30,
    "isretuntitle":"Returned",
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag8.png",
    "ratings": '(65)',
  },
  {
    "name": "Handbags",
    "price": '\$260',
    "isretuncolor":0xff2E3192,
    "isretuntitle":"In Process",
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag9.png",
    "ratings": '(65)',
  },
  {
    "name": "Female Handbags",
    "price": '\$260',
"isretuncolor":0xffFE3A30,
    "isretuntitle":"Returned",
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag10.png",
    "ratings": '(65)',
  },
  {
    "name": "Handbags",
    "price": '\$260',
    "isretuncolor":0xff2E3192,
    "isretuntitle":"In Process",
    "discountprice": "\$360",
    "image": "assets/images/returnproductimage1.png",
    "ratings": '(65)',
  },
  {
    "name": "Female Handbags",
    "price": '\$260',
"isretuncolor":0xffFE3A30,
    "isretuntitle":"Returned",
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag7.png",
    "ratings": '(65)',
  },
];