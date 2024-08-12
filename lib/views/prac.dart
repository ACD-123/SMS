// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:sms/controllers/homeguestcontroller.dart';
// import 'package:sms/routes/route_constants.dart';

// class ProductGrid extends StatelessWidget {
//   final HomeGuestController homeguestcontroller =
//       Get.put(HomeGuestController());

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeGuestController>(
//       builder: (controller) {
//         return GridView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: controller.hotsellproductslist.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisSpacing: 10,
//               childAspectRatio: 0.62,
//               mainAxisSpacing: 20,
//               crossAxisCount: 3),
//           itemBuilder: (context, index) {
//             final hotsellproductdata = controller.hotsellproductslist[index];
//             return GestureDetector(
//               onTap: () {
//                 Get.toNamed(RouteConstants.productdetailscreen);
//               },
//               child: Container(
//                 height: 100.h,
//                 width: 30.w,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 14.h,
//                       width: 30.w,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           border: Border.all(
//                               color: const Color(0xff000000).withOpacity(0.2))),
//                       child: Stack(
//                         children: [
//                           Center(
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(12),
//                               child: Image.asset(
//                                 hotsellproductdata['image'],
//                                 height: 14.h,
//                                 width: 30.w,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             top: 9,
//                             left: 0,
//                             child: Container(
//                               height: 2.h,
//                               width: 9.w,
//                               decoration: const BoxDecoration(
//                                   color: Color(0xff484BA0),
//                                   borderRadius: BorderRadius.only(
//                                       topRight: Radius.circular(5),
//                                       bottomRight: Radius.circular(5))),
//                               child: Center(
//                                   child: Text(
//                                 "${hotsellproductdata['off']} OFF",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 11.sp),
//                               )),
//                             ),
//                           ),
//                           Positioned(
//                               top: 3,
//                               right: 4,
//                               child: GestureDetector(
//                                 onTap: () {
//                                   controller
//                                       .tapguesthomehotsellproductsFavorite(
//                                           hotsellproductdata);
//                                 },
//                                 child: CircleAvatar(
//                                     radius: 14.sp,
//                                     backgroundColor: const Color(0xffEEEAEA),
//                                     child: Center(
//                                         child: hotsellproductdata[
//                                                     "isfavourite"] ==
//                                                 true
//                                             ? Icon(
//                                                 Icons.favorite,
//                                                 size: 17.sp,
//                                                 color: const Color(0xff484BA0),
//                                               )
//                                             : Icon(
//                                                 Icons.favorite_border_outlined,
//                                                 size: 17.sp))),
//                               ))
//                         ],
//                       ),
//                     ),
//                     Text(
//                       hotsellproductdata['name'],
//                       style: TextStyle(
//                           fontSize: 13.sp, fontWeight: FontWeight.w500),
//                     ),
//                     Row(
//                       children: [
//                         Text(hotsellproductdata['price'],
//                             style: TextStyle(
//                                 fontSize: 14.sp,
//                                 color: Color(0xff2E3192),
//                                 fontWeight: FontWeight.w500)),
//                         SizedBox(
//                           width: 0.5.w,
//                         ),
//                         Text(hotsellproductdata['discountprice'],
//                             style: TextStyle(
//                                 fontSize: 12.sp,
//                                 color: Color.fromARGB(255, 1, 1, 3),
//                                 decoration: TextDecoration.lineThrough))
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Row(
//                             children: List.generate(
//                                 5,
//                                 (index) => Icon(
//                                       Icons.star_purple500_sharp,
//                                       color: const Color(0xffFFAD33),
//                                       size: 13.sp,
//                                     ))),
//                         SizedBox(
//                           width: 0.5.w,
//                         ),
//                         Text(hotsellproductdata['ratings'],
//                             style: TextStyle(
//                               fontSize: 11.sp,
//                             )),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
