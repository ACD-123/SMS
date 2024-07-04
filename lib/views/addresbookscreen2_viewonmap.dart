import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/custombutton.dart';

class AddressBookScreen2ViewMap extends StatelessWidget {
  const AddressBookScreen2ViewMap({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (

      floatingActionButton: FloatingActionButton(
       
        child:   Image.asset(
                      'assets/images/adresbook2mapfloatingbuttonicon.png',
                   scale: 6.sp,
                    ),
        backgroundColor: Color(0xffFFFFFF),
        
        onPressed: (){}),
      bottomNavigationBar: Container(height: 20.h,decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25), 
              offset: const Offset(1, -6), 
              blurRadius: 4, 
            ),
          ],
        color:  Color(0xffF8F8F8),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      child: 
       Column(
         children: [
            SizedBox(height: 3.h,),
           Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/adresbook2maphomeicon.png',
                    scale: 6.sp,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                   
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Text(
                                   "14500 Juanita Drive NEKenmore WA \n 98028-4966USA - Kenmore",
                                   style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff2B2B2B),
                        fontWeight: FontWeight.w400),
                                 ),
                   ),
                  ],
                ),
              
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: custombutton(hinttext: "Save",ontap: (){}),
                )
         ],
       ),
      ),
      body:  SafeArea(
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/adresbook2mapimage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 20,top: 25),
            child: Column(
              children: [
                    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
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
                                color: const Color(0xffFFFFFF)),
                            child: Center(
                                child: Icon(
                              Icons.arrow_back_ios_new_sharp,
                              size: 17.sp,
                            )),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        width: 82.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffFFFFFF)),
                        child: GestureDetector(
                          onTap: () {
                            // Get.toNamed(RouteConstants.searchscreen);
                          },
                          child: TextFormField(
                            // enabled: false,
                            style: TextStyle(fontSize: 14.sp),
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                'assets/images/searchiconblack.png',
                                scale: 1.5,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  right: 15, left: 15, top: 8, bottom: 13),
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            onSaved: (value) {},
                          ),
                        ),
                      ),
                     
                    ],
                  ), SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height:5.h,
                      width: 75.w,
                  child: ClipPath(
                    
                    clipper: MessageBubbleClipper(),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 8),
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          'Move pin to set your exact location',
                          style: TextStyle(fontSize: 14.sp, color: Color(0xffFFFFFF),),
                        ),
                      ),
                    ),
                  ),),
                  Image.asset(
                'assets/images/adresbook2mapmarkerimage.png',
                scale: 1,
              ),
 
              ],
            ),
          ),
        ),
    ),
    );
    
    
    
    
   
  }
}

class MessageBubbleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double borderRadius = 13.8;
    final double arrowHeight = 10.0;
    final double arrowWidth = 20.0;
    final double arrowOffset = (size.width - arrowWidth) / 2;

    final Path path = Path()
      ..moveTo(borderRadius, 0)
      ..lineTo(size.width - borderRadius, 0)
      ..quadraticBezierTo(size.width, 0, size.width, borderRadius)
      ..lineTo(size.width, size.height - arrowHeight - borderRadius)
      ..quadraticBezierTo(size.width, size.height - arrowHeight, size.width - borderRadius, size.height - arrowHeight)
      ..lineTo(arrowOffset + arrowWidth, size.height - arrowHeight)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(arrowOffset, size.height - arrowHeight)
      ..lineTo(borderRadius, size.height - arrowHeight)
      ..quadraticBezierTo(0, size.height - arrowHeight, 0, size.height - arrowHeight - borderRadius)
      ..lineTo(0, borderRadius)
      ..quadraticBezierTo(0, 0, borderRadius, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}