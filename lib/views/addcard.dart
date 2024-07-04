import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';

import '../customcomponents/customelevatedbutton.dart';

class AddNewCard extends StatefulWidget {
  AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final homeguestcontroller =
        Get.put(HomeGuestController(authRepo: Get.find()));
    List<String> valuesDataColors = [
      'assets/images/atmcard.png',
      'assets/images/atmcard2.png',
      'assets/images/atmcard3.png',
    ];

    List<Widget> valuesWidget = [];
    for (int i = 0; i < valuesDataColors.length; i++) {
      valuesWidget.add(Container(
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            valuesDataColors[i],
          ),
        ),
      ));
    }

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

    var expirydateaddnewcardpaymentmethod = Rxn<DateTime>();

    void updateexpirydateaddnewcardpaymentmethod(DateTime date) {
      expirydateaddnewcardpaymentmethod.value = date;
    }

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
            'New Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Sha/re.share("Check out my latest tutorial");
            },
            child: Container(
              child: Image.asset('assets/images/Wishlist.png'),
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          GestureDetector(
            onTap: () {
              // Sha/re.share("Check out my latest tutorial");
            },
            child: Container(
              // height: 15, // Set the desired height here

              child: Image.asset('assets/images/Cart1 (1).png'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit Card'),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/pay1.png'),
                  // SizedBox(
                  //   width: 1.h,
                  // ),
                  Image.asset('assets/images/pay2.png'),
                  // SizedBox(
                  //   width: 1.h,
                  // ),

                  Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Image.asset('assets/images/pay3.png')),
                ],
              ),
              Container(
                height: 350,
                child: CardSlider(
                  cards: valuesWidget,
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
                      // Image.asset('assets/images/pay2.png'),
                      child: Image.asset(
                        'assets/images/pay2.png',
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
                  Obx(
                    () => GestureDetector(
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
                                ? '${homeguestcontroller.expirydateaddnewcardpaymentmethod.value!.day}/${homeguestcontroller.expirydateaddnewcardpaymentmethod.value!.month}/${homeguestcontroller.expirydateaddnewcardpaymentmethod.value!.year}'
                                : "Expiry Date",
                            hintStyle: TextStyle(
                                fontSize: 14.sp, color: Color(0xff656565)),
                          ),
                          onSaved: (value) {},
                        ),
                      ),
                    ),
                  ),
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
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: [
                    Text('Save as Draft', style: TextStyle(fontSize: 12)),
                    Checkbox(
                      // fillColor: Colors.white,
                      checkColor: Color(0xff2E3192),
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Shipping Details',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff1375EA).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Andersion'),
                        Text('2438 6th Ave, ketchikan Alaska 9901 USA'),
                        Text('02184548845')
                      ]),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              ElevetedButton(
                buttonName: 'Save',
                textColor: Colors.white,
                ontap: () async {
                  Get.toNamed(RouteConstants.checkout);
                },
                fontSize: 14,

                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2E3192),
                // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
