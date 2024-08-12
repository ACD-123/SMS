import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/custom_popup_dialogwhite.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';
import 'package:sms/customcomponents/customrowpaymentmethod.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

void showSuccessDialogAndNavigateToLogin(context) {
  Get.dialog(
    WhiteCustomPopupDialog(
      message: 'Order Success!',
      image: 'assets/images/likeicon.png',
    ),
  );

  // Delay for 1 second
  Future.delayed(Duration(seconds: 1), () {
    Get.offAllNamed(RouteConstants.bottomnavbar);
    ;
  });
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 12),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/arrowback1.png',
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Checkout',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          // GestureDetector(
          //   onTap: () {
          //     // Sha/re.share("Check out my latest tutorial");
          //   },
          //   child: Container(
          //     child: Icon(
          //       Icons.favorite_outline_outlined,
          //       size: 2.5.h,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: 1.w,
          // ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteConstants.addtocart);
            },
            child: Container(
              // height: 15, // Set the desired height here

              child: Image.asset(
                'assets/images/carticon.png',
                height: 2.5.h,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Choose Payment Method',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customrowpaymentmethods(
                    index: 0,
                    image: 'assets/images/addcardpng.png',
                  ),
                  // SizedBox(width: 10.w,),
                  customrowpaymentmethods(
                    index: 1,
                    image: 'assets/images/pay3.png',
                  ),
                  // Image.asset('assets/images/pay1.png'),
                  // // SizedBox(
                  // //   width: 1.h,
                  // // ),
                  // Image.asset('assets/images/pay2.png'),
                  // // SizedBox(
                  // //   width: 1.h,
                  // // ),

                  // Container(
                  //     height: 40,
                  //     width: MediaQuery.of(context).size.width * 0.16,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         border: Border.all(color: Colors.grey)),
                  //     child: Image.asset('assets/images/pay3.png')),
                  // SizedBox(
                  //   width: 1.h,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 5),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteConstants.addnewcard);
                      },
                      child: Container(
                        height: 5.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                            //  border: Border.all(color: Color(0xff2E3192)),
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff2E3192)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/plus.png'),
                              Text("Add New Card",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'More Options',
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 12),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text('Shipping Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)
                    // color: Colors.
                    ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Anderson'),
                          Text('Change',
                              style: TextStyle(
                                  color: Color(0xff2E3192),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                        // height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text('2438 6th Ave, Ketchikan, Alaska 99901, USA'),
                      Text('02184548845'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text('Order Summary',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff1375EA).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal (2 items)'),
                          Text('\$98.88'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping'),
                          Text('\$96.88'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount'),
                          Text('\$5.88'),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Total',
                            style: TextStyle(
                              color: Color(0xff2E3192),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$198.00',
                            style: TextStyle(
                              color: Color(0xff2E3192),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Note',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF5F5F5)),
                // height: MediaQuery.of(context).size.heig,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              ElevetedButton(
                buttonName: 'Confirm and Pay',
                textColor: Colors.white,
                ontap: () async {
                  showSuccessDialogAndNavigateToLogin(context);
                  // Get.toNamed(RouteConstants.checkout);
                },
                fontSize: 14,

                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2E3192),
                // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
