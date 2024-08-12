import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/customappbar.dart';
import 'package:sms/customcomponents/custombutton.dart';

class PaymentSetting_PaymentMethodsScreen extends StatefulWidget {
  const PaymentSetting_PaymentMethodsScreen({super.key});

  @override
  State<PaymentSetting_PaymentMethodsScreen> createState() =>
      _PaymentSetting_PaymentMethodsScreenState();
}

class _PaymentSetting_PaymentMethodsScreenState
    extends State<PaymentSetting_PaymentMethodsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(title: "Payment methods"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 24.h,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1375EA).withOpacity(0.2)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 20, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Payment Method',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff101010),
                      ),
                    ),
                      
                    customrowpaymentmethods(
                      index: 0,
                        image: 'assets/images/paymentmethodmastercardicon.png',
                        title: 'Mastercard'),
                    customrowpaymentmethods(index: 1,
                        image: 'assets/images/paymentmethodvisapremiumicon.png',
                        title: 'Visa Premium'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customrowpaymentmethods(index: 2,
                            image:
                                'assets/images/pay3.png',
                            title: 'Apple Pay'),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(RouteConstants.addnewcardpaymentmethod);
                            },
                            child: Container(
                              height: 3.3.h,
                              width: 27.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xff2E3192),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 15.sp,
                                      color: Color(0xffFFFFFF),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Text(
                                      'Add new card',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: custombutton(
                
                
                ontap: (){

                },
                hinttext: 'Save Changes'),
            ),
           
          ],
        ),
      ),
    );
  }
}

/////////custom row payment methods
Padding customrowpaymentmethods({
  
  required String image,
  required String title,
  required int index,
}) {
    final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Obx(() => GestureDetector(
          onTap: (){
            homeguestcontroller.updatechoosepaymentmethod(index);
          },
          child: Container(
            height: 4.5.h,
            width: 16.w,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color:
                homeguestcontroller.choosepaymentmethod.value == index ? 
                const Color(0xff2E3192):
                const Color(0xffDDDDDD)),
                image: DecorationImage(image: AssetImage(image)),
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(9.86)),
          ),
        ),),
        SizedBox(
          width: 2.w,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff1B1B1B),
              fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}







