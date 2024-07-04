import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

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
              'Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
          // actions: [
          //   GestureDetector(
          //     onTap: () {
          //       // Share.share("Check out my latest tutorial");
          //     },
          //     child: Container(
          //       height: 15, // Set the desired height here

          //       child: Image.asset('assets/images/shareicon.png'),
          //     ),
          //   ),
          //   const SizedBox(
          //     width: 20,
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
                child: Text(
              'Subtotal (2 items)',
              style: TextStyle(
                  color: Color(0xff2E3192),
                  fontSize: 16,
                  // ),
                  fontWeight: FontWeight.w600),
            )),
            SizedBox(
              height: 1.h,
            ),
            CartData(context),
            CartData(context),
          
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xffEFEFEF),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Promo Code'), Text('Apply')],
                  ),
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevetedButton(
                    buttonName: 'Continue Shopping',
                    textColor: Colors.black,
                    ontap: () async {
                      Get.offAllNamed(RouteConstants.bottomnavbar);
                    },
                    fontSize: 14,
          
                    borderColor: Colors.grey,
                    width: MediaQuery.of(context).size.width * 0.4,
                    // color: const Color(0xff2E3192),
                    // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
                  ),
                  ElevetedButton(
                    buttonName: 'Go To CheckOut',
                    textColor: Colors.white,
                    ontap: () async {
                      Get.toNamed(RouteConstants.checkout);
                    },
                    fontSize: 14,
          
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: const Color(0xff2E3192),
                    // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
                  ),
                ],
              ),
            ),
            // CartData(context),r
          ]),
        ));
  }

  Padding CartData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 2,
        child: Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10)),
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/cartimage.png')),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('H1 Gamepad'),
                  SizedBox(
                    height: 0.4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$260',
                        style: TextStyle(
                          color: Color(0xff2E3192),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.19),
                      GestureDetector(
                        onTap: () {
                          _decrementQuantity();
                        },
                        child: Icon(
                          Icons.remove_circle_outline_rounded,
                          color: Color(0xff2E3192),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '$_quantity',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          _incrementQuantity();
                        },
                        child: Icon(
                          Icons.add_circle_outline_rounded,
                          color: Color(0xff2E3192),
                        ),
                      )
                      // IconButton(
                      //   icon: Icon(Icons.add),
                      //   onPressed: _incrementQuantity,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 0.3.h,
                  ),
                  Row(
                    children: [
                      Text('M (48)'),
                      SizedBox(
                        width: 3.w,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/Ellipse 8.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Text('Red'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
