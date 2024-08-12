import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/controller/homeguestcontroller.dart';
import 'package:sms/customcomponents/custombutton.dart';
import 'package:sms/customcomponents/customcarticon.dart';

class AddNewCardPaymentMethod extends StatefulWidget {
  const AddNewCardPaymentMethod({super.key});

  @override
  State<AddNewCardPaymentMethod> createState() =>
      _AddNewCardPaymentMethodState();
}

class _AddNewCardPaymentMethodState extends State<AddNewCardPaymentMethod> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  List<String> cardsimages = [
    'assets/images/atmcard.png',
    'assets/images/atmcard2.png',
    'assets/images/atmcard3.png',
  ];

  ///selectexpirydate
  void selectexpirydate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      homeguestcontroller.updateexpirydateaddnewcardpaymentmethod(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> cardsvalue = [];
    for (int i = 0; i < cardsimages.length; i++) {
      cardsvalue.add(Container(
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            cardsimages[i],
          ),
        ),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18.sp,
            )),
        automaticallyImplyLeading: false,
        title: Text(
          "New Card",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Row(
              children: [customcarticon(quantity: '2')],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 8, bottom: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit card',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Color(0xff101010),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customrowpaymentmethods(
                    index: 0,
                    image: 'assets/images/addcardpng.png',
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  customrowpaymentmethods(
                    index: 1,
                    image: 'assets/images/pay3.png',
                  ),
                ],
              ),
              Container(
                height: 35.h,
                child: CardSlider(
                  cards: cardsvalue,
                  bottomOffset: .0003,
                  cardHeight: 0.75,
                  containerHeight: MediaQuery.of(context).size.height - 100,
                  itemDotOffset: -0.05,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFFFFF),
                  border: Border.all(color: Color(0xFFDBDBDB)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 8.75),
                      blurRadius: 16.53,
                    ),
                  ],
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 14.sp),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset(
                        'assets/images/paymentmethodvisapremiumicon.png',
                        height: 2.h,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(right: 12, top: 12),
                    hintText: "Card Number",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, color: Color(0xff656565)),
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {},
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => GestureDetector(
                        onTap: () {
                          selectexpirydate(context);
                        },
                        child: Container(
                          width: 43.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFFFFF),
                            border: Border.all(color: Color(0xFFDBDBDB)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 8.75),
                                blurRadius: 16.53,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            enabled: false,
                            style: TextStyle(fontSize: 14.sp),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              border: InputBorder.none,
                              hintText: homeguestcontroller
                                          .expirydateaddnewcardpaymentmethod
                                          .value !=
                                      null
                                  ? '${homeguestcontroller.expirydateaddnewcardpaymentmethod.value!.month}/${homeguestcontroller.expirydateaddnewcardpaymentmethod.value!.year}'
                                  : "Expiry Date",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp, color: Color(0xff656565)),
                            ),
                            onSaved: (value) {},
                          ),
                        ),
                      )),
                  Container(
                    width: 43.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                      border: Border.all(color: Color(0xFFDBDBDB)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 8.75),
                          blurRadius: 16.53,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        border: InputBorder.none,
                        hintText: "CVC/CVV",
                        hintStyle: TextStyle(
                            fontSize: 14.sp, color: Color(0xff656565)),
                      ),
                      onSaved: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFFFFFF),
                  border: Border.all(color: Color(0xFFDBDBDB)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 8.75),
                      blurRadius: 16.53,
                    ),
                  ],
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 14.sp),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    border: InputBorder.none,
                    hintText: "Cardholder Name",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, color: Color(0xff656565)),
                  ),
                  onSaved: (value) {},
                ),
              ),
              // SizedBox(
              //   height: 1.h,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Remember this card for the future orders',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Color(0xff787777),
                    ),
                  ),
                  Obx(() => Transform.scale(
                        scale: 3.sp,
                        child: Switch(
                          value: homeguestcontroller
                              .remeberthiscardforfutureordersaddnewcard.value,
                          onChanged: (newvalue) {
                            homeguestcontroller
                                .updateremeberthiscardforfutureordersaddnewcard(
                                    newvalue);
                          },
                          inactiveThumbColor: Color(0xff2E3192),
                          activeColor: Color(0xff2E3192),
                          inactiveTrackColor: Color(0xffDCDCDC),
                          activeTrackColor: Color(0xffE8E8E8),
                        ),
                      ))
                ],
              ),

              SizedBox(
                height: 1.h,
              ),

              custombutton(hinttext: "Save")
            ],
          ),
        ),
      ),
    );
  }
}

/////////custom row payment methods
Padding customrowpaymentmethods({
  required String image,
  required int index,
}) {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Obx(
      () => GestureDetector(
        onTap: () {
          homeguestcontroller.updateaddnewcardpaymentmethod(index);
        },
        child: Container(
          height: 5.5.h,
          width: 30.w,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2,
                  color:
                      homeguestcontroller.addnewcardpaymentmethod.value == index
                          ? const Color(0xff2E3192)
                          : const Color(0xffDDDDDD)),
              image: DecorationImage(image: AssetImage(image)),
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(9.86)),
        ),
      ),
    ),
  );
}
