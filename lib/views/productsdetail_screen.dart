import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ImageSlideshow(
                    width: double.infinity,
                    height: 39.h,
                    indicatorColor: Color(0xff2E3192),
                    indicatorBackgroundColor: Color(0xffFFFFFF),
                    children: [
                      Image.asset(
                        'assets/images/productdetailbannerimage.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/images/productdetailbannerimage.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 4.h,
                          width: 8.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.79),
                              color: const Color(0xffEEEAEA)),
                          child: Center(
                              child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 17.sp,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 23,
                      right: 0,
                      child: Obx(
                        () => GestureDetector(
                          onTap: () {
                            homeguestcontroller.productdetailfavourite();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              height: 4.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.79),
                                  color: const Color(0xffEEEAEA)),
                              child: Center(
                                  child: Icon(
                                homeguestcontroller
                                        .productdetailisfavourite.value
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: Color(0xff2E3192),
                              )),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 2, right: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "HAVIT HV-G92 Gamepad",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        Image.asset(
                          "assets/images/productdetailsshareicon.png",
                          scale: 20.sp,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$260",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2E3192)),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "\$360",
                          style: TextStyle(
                              fontSize: 15.sp,
                              decoration: TextDecoration.lineThrough,
                              color: Color(0xff2E3192)),
                        ),
                        Spacer(),
                        Text(
                          "+ \$4.80 Shipping from United Kingdom",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Save \$ 8.99 ( 40% off )",
                          style: TextStyle(
                              fontSize: 13.sp, color: Color(0xffEF0D0D)),
                        )),
                    Row(
                      children: [
                        Row(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star_purple500_sharp,
                                      color: const Color(0xffFFAD33),
                                      size: 17.sp,
                                    ))),
                        SizedBox(
                          width: 0.5.w,
                        ),
                        Text("(88)",
                            style: TextStyle(
                              fontSize: 15.sp,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quantity:",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff929292)),
                        ),
                        Container(
                          height: 5.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Color(0xffDBDBDB)),
                              color: Colors.white),
                          child: Center(
                              child: Obx(() => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              homeguestcontroller
                                                  .removeproductdetailquantity();
                                            },
                                            child: Icon(
                                              Icons
                                                  .remove_circle_outline_rounded,
                                              color: Color(0xff2E3192),
                                            )),
                                        Text(
                                          homeguestcontroller
                                              .productdetailquantity.value
                                              .toString(),
                                          style: TextStyle(
                                              color: const Color(0xff1375EA),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              homeguestcontroller
                                                  .addproductdetailquantity();
                                            },
                                            child: Icon(
                                              Icons.add_circle_outline_rounded,
                                              color: Color(0xff2E3192),
                                            )),
                                      ],
                                    ),
                                  ))),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff929292)),
                        ),
                        Container(
                          height: 5.h,
                          width: 35.w,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Center(
                              child: DropdownButtonFormField<String>(
                            // validator: (selectedSize) {

                            // },
                            decoration: InputDecoration(
                              hintText: "Size",
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xff929292),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide:
                                    BorderSide(color: Color(0xffDBDBDB)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide:
                                    BorderSide(color: Color(0xffDBDBDB)),
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 8, right: 2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            value:
                                homeguestcontroller.selectedproductdetailsize,
                            onChanged: (newValue) {
                              homeguestcontroller.selectedproductdetailsize =
                                  newValue!;
                            },
                            items: homeguestcontroller.productdetailsize
                                .map((size) {
                              return DropdownMenuItem<String>(
                                value: size,
                                child: Text(
                                  size,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff929292),
                                  ),
                                ),
                              );
                            }).toList(),
                            icon: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/arrowdropdown.png"),
                            ),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Color",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff929292)),
                        ),
                        Container(
                          height: 5.h,
                          width: 35.w,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Center(
                              child: DropdownButtonFormField<String>(
                            // validator: (selectedSize) {

                            // },
                            decoration: InputDecoration(
                              hintText: "Color",
                              hintStyle: TextStyle(
                                fontSize: 7.sp,
                                color: Color(0xff929292),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide:
                                    BorderSide(color: Color(0xffDBDBDB)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide:
                                    BorderSide(color: Color(0xffDBDBDB)),
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 8, right: 2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            value:
                                homeguestcontroller.selectedproductdetailcolor,
                            onChanged: (newValue) {
                              homeguestcontroller.selectedproductdetailcolor =
                                  newValue!;
                            },
                            items: homeguestcontroller.productdetailcolor
                                .map((size) {
                              return DropdownMenuItem<String>(
                                value: size,
                                child: Text(
                                  size,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff929292),
                                  ),
                                ),
                              );
                            }).toList(),
                            icon: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/arrowdropdown.png"),
                            ),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/productdetailfreedeliveryicon.png",
                                    scale: 18.sp),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Free Delivery",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff2E3192),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Enter your postal code for Delivery Availability",
                                      style: TextStyle(
                                          fontSize: 11.5.sp,
                                          color: Color(0xff959494),
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff959494)),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/returndeliveryicon.png",
                                  scale: 19.sp,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Return Delivery",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Color(0xff2E3192),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Free 30 Days Delivery Returns.',
                                            style: TextStyle(
                                              fontSize: 11.5.sp,
                                              color: Color(0xff959494),
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Details',
                                            style: TextStyle(
                                              fontSize: 11.5.sp,
                                              color: Color(0xff959494),
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor:
                                                  Color(0xff959494),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    Text(
                      "Product Description",
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    productdescriptiondata("Brand", "Nike"),
                    SizedBox(
                      height: 1.h,
                    ),
                    productdescriptiondata("Gender", "Male"),
                    SizedBox(
                      height: 1.h,
                    ),
                    productdescriptiondata("Condition", "New"),
                    SizedBox(
                      height: 1.h,
                    ),
                    productdescriptiondata("Product Number", "Ay651"),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "See Full Description",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          decorationColor: Color(0xff959494),
                          decoration: TextDecoration.underline,
                          color: Color(0xff929292)),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Divider(),
                  ],
                ),
              ),
              Container(
                height: 24.h,
                decoration:
                    BoxDecoration(color: Color(0xff1375EA).withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "About Seller",
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Obx(
                                () => GestureDetector(
                                    onTap: () {
                                      homeguestcontroller
                                          .productdetailsaveseller();
                                    },
                                    child: Icon(
                                      homeguestcontroller
                                              .productdetailissaveseller.value
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: Color(0xff2E3192),
                                      size: 18.sp,
                                    )),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "Save this Seller",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/sellershopimage.png",
                                height: 8.h,
                                width: 20.w,
                                fit: BoxFit.fill,
                              )),
                          SizedBox(
                            width: 3.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SMS Store",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Row(
                                      children: List.generate(
                                          5,
                                          (index) => Icon(
                                                Icons.star_purple500_sharp,
                                                color: const Color(0xffFFAD33),
                                                size: 17.sp,
                                              ))),
                                  SizedBox(
                                    width: 0.5.w,
                                  ),
                                  Text("(65)",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteConstants.sellershop);
                            },
                            child: Container(
                              height: 5.h,
                              width: 44.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff2E3192)),
                              child: Center(
                                child: Text("Visit Store",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 5.h,
                              width: 44.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xff2E3192),
                                ),
                              ),
                              child: Center(
                                child: Text("Contact",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff2E3192),
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
            Get.toNamed(RouteConstants.addtocart);
        },
        child: Container(
          height: 11.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xff2E3192)),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, bottom: 5, top: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xffFFFFFF),
                      size: 18.sp,
                    )
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12)),
                  width: 30.w,
                  height: 0.5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///////product description data
Row productdescriptiondata(String title, String subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff929292)),
      ),
      Text(
        subtitle,
        style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff929292)),
      ),
    ],
  );
}
