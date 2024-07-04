import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';

class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({super.key});

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.toNamed(RouteConstants.myprofilescreen);
          },
          child: Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Container(child: Row(children: [
            CircleAvatar(
              radius: 20.sp,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/chatslistprofilepic3.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8,left: 8),
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                      Row(
                                        children: [
                                          Text("Hello",style: TextStyle(color: Color(0xff2E3192),fontWeight: FontWeight.w700,fontSize: 16.sp),),
                                          SizedBox(width: 1.w,),
                                          
                                          Icon(Icons.waving_hand,color: Color(0xffFFD232),size: 17.sp,),
                                        ],
                                      ),
                                      
                                      Text("Mathew Smith",style: TextStyle(color: Color(0xff000000).withOpacity(0.7),fontWeight: FontWeight.w400
                                      ,fontSize: 13.sp
                                      ),),
                            ],),
                          )
          ],),),
        ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteConstants.notificationscreens);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 4.h,
                width: 10.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffEEEAEA)),
                child: Center(
                    child: Image.asset('assets/images/homenotificationicon.png',
                        scale: 1.5)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 25, top: 15, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 4.h,
                    width: 73.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffEEEAEA)),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteConstants.searchscreen);
                      },
                      child: TextFormField(
                        enabled: false,
                        style: TextStyle(fontSize: 14.sp),
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            'assets/images/homesearchicon.png',
                            scale: 1.5,
                          ),
                          contentPadding: const EdgeInsets.only(
                              right: 15, left: 15, top: 8, bottom: 13),
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
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteConstants.searchfilterscreen);
                    },
                    child: Container(
                      height: 4.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffEEEAEA)),
                      child: Center(
                          child: Image.asset(
                        'assets/images/homefiltericon.png',
                        scale: 1.5,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              ImageSlideshow(
                width: double.infinity,
                height: 20.h,
                indicatorColor: Color(0xffDB4444),
                indicatorBackgroundColor: Color(0xffFFFFFF),
                children: List.generate(
                  5,
                  (index) => Image.asset(
                    'assets/images/homeimageslider.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text("Categories",
                  style: TextStyle(
                      color: const Color(0xff484BA0),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 1.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 5.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: categoriesList.length,
                          itemBuilder: (context, index) {
                            final categorydata = categoriesList[index];
                            bool iscategorySelected = index ==
                                homeguestcontroller
                                    .homeguestselectedCategoryIndex.value;
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    homeguestcontroller
                                        .homeguestselectedCategoryIndex
                                        .value = index;
                                  });
                                  Get.toNamed(RouteConstants.categoriesscreen);
                                },
                                child: Container(
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: iscategorySelected
                                            ? const Color(0xff1375EA)
                                            : const Color(0xffF0EFEF)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                  categorydata["image"])),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            categorydata["title"],
                                            style: TextStyle(
                                                color: iscategorySelected
                                                    ? const Color(0xffFFFFFF)
                                                    : const Color(0xff484BA0),
                                                fontSize: 12.sp),
                                          ),
                                          SizedBox(
                                            width: 1.w,
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot Sell Products",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600)),
                  Text("See all",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Obx(() => GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: homeguestcontroller.hotsellproductslist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 20,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    final hotsellproductdata =
                        homeguestcontroller.hotsellproductslist[index];
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
                                        hotsellproductdata['image'],
                                        height: 15.h,
                                        width: 30.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 9,
                                    left: 0,
                                    child: Container(
                                      height: 2.h,
                                      width: 9.w,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff484BA0),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5))),
                                      child: Center(
                                          child: Text(
                                        "${hotsellproductdata['off']} OFF",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.sp),
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                      top: 3,
                                      right: 4,
                                      child: GestureDetector(
                                        onTap: () {
                                          homeguestcontroller
                                              .tapguesthomehotsellproductsFavorite(
                                                  hotsellproductdata);
                                        },
                                        child: CircleAvatar(
                                            radius: 14.sp,
                                            backgroundColor:
                                                const Color(0xffEEEAEA),
                                            child: Center(
                                                child: hotsellproductdata[
                                                            "isfavourite"] ==
                                                        true
                                                    ? Icon(
                                                        Icons.favorite,
                                                        size: 17.sp,
                                                        color: const Color(
                                                            0xff484BA0),
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .favorite_border_outlined,
                                                        size: 17.sp))),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              hotsellproductdata['name'],
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Text(hotsellproductdata['price'],
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff2E3192),
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(hotsellproductdata['discountprice'],
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color.fromARGB(255, 1, 1, 3),
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
                                              size: 13.sp,
                                            ))),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(hotsellproductdata['ratings'],
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })),
              SizedBox(
                height: 4.h,
              ),
              ImageSlideshow(
                  width: double.infinity,
                  height: 20.h,
                  indicatorColor: Colors.transparent,
                  indicatorBackgroundColor: Colors.transparent,
                  children: [
                    Image.asset(
                      'assets/images/homebannerslider1.png',
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/homebannerslider2.png',
                      fit: BoxFit.contain,
                    ),
                  ]),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Selling Products",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600)),
                  Text("See all",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Obx(() => GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: homeguestcontroller.topsellproductslist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 20,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    final topsellproductdata =
                        homeguestcontroller.topsellproductslist[index];
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
                                        topsellproductdata['image'],
                                        height: 15.h,
                                        width: 30.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 9,
                                    left: 0,
                                    child: Container(
                                      height: 2.h,
                                      width: 11.w,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff484BA0),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5))),
                                      child: Center(
                                          child: Text(
                                        "Top Rated",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.sp),
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                      top: 3,
                                      right: 4,
                                      child: GestureDetector(
                                        onTap: () {
                                          homeguestcontroller
                                              .tapguesthometopsellproductsFavorite(
                                                  topsellproductdata);
                                        },
                                        child: CircleAvatar(
                                            radius: 14.sp,
                                            backgroundColor:
                                                const Color(0xffEEEAEA),
                                            child: Center(
                                                child: topsellproductdata[
                                                            "isfavourite"] ==
                                                        true
                                                    ? Icon(
                                                        Icons.favorite,
                                                        size: 17.sp,
                                                        color: const Color(
                                                            0xff484BA0),
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .favorite_border_outlined,
                                                        size: 17.sp,
                                                      ))),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              topsellproductdata['name'],
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Text(topsellproductdata['price'],
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff2E3192),
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(topsellproductdata['discountprice'],
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xff2E3192),
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
                                              size: 13.sp,
                                            ))),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(topsellproductdata['ratings'],
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore Our Products",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600)),
                  Text("See all",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Obx(
                () => GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        homeguestcontroller.exploreourproductslist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: 20,
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      final exploreproductsdata =
                          homeguestcontroller.exploreourproductslist[index];
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
                                          exploreproductsdata['image'],
                                          height: 15.h,
                                          width: 30.w,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 3,
                                        right: 4,
                                        child: GestureDetector(
                                          onTap: () {
                                            homeguestcontroller
                                                .tapguesthomeexploreourproductsFavorite(
                                                    exploreproductsdata);
                                          },
                                          child: CircleAvatar(
                                              radius: 14.sp,
                                              backgroundColor:
                                                  const Color(0xffEEEAEA),
                                              child: Center(
                                                  child: exploreproductsdata[
                                                              "isfavourite"] ==
                                                          true
                                                      ? Icon(
                                                          Icons.favorite,
                                                          size: 17.sp,
                                                          color: const Color(
                                                              0xff484BA0),
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .favorite_border_outlined,
                                                          size: 17.sp))),
                                        ))
                                  ],
                                ),
                              ),
                              Text(
                                exploreproductsdata['name'],
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(exploreproductsdata['price'],
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff2E3192),
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    width: 0.5.w,
                                  ),
                                  Text(exploreproductsdata['discountprice'],
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xff2E3192),
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
                                  Text(exploreproductsdata['ratings'],
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
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Arrivals",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600)),
                  Text("See all",
                      style: TextStyle(
                          color: const Color(0xff484BA0),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: newarrivalslist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.92,
                      crossAxisCount: 3),
                  itemBuilder: ((context, index) {
                    final newarrivalsdata = newarrivalslist[index];
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteConstants.productdetailscreen);
                      },
                      child: Container(
                        height: 17.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage(
                                  newarrivalsdata["image"],
                                ),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(newarrivalsdata["title"],
                                  style: TextStyle(
                                      color: const Color(0xffFAFAFA),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500)),
                              Text(newarrivalsdata["description"],
                                  style: TextStyle(
                                      color: const Color(0xffFAFAFA),
                                      fontSize: 11.sp)),
                              SizedBox(
                                height: 0.3.h,
                              ),
                              Text("Shop Now",
                                  style: TextStyle(
                                    color: const Color(0xffFAFAFA),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color(0xffFAFAFA),
                                    decorationThickness: 2,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}

////////////////newarrivales list
List<Map<String, dynamic>> newarrivalslist = [
  {
    "title": "Speakers",
    "description": 'Amazon wireless speakers',
    "image": "assets/images/homenewarrivals1.png",
  },
  {
    "title": "Perfume",
    "description": 'GUCCI INTENSE OUD EDP',
    "image": "assets/images/homenewarrivals2.png",
  },
  {
    "title": "Women’s Collections",
    "description": 'Featured woman collections that give you another vibe.',
    "image": "assets/images/homenewarrivals3.png",
  },
];

//////////categoires list
List<Map<String, dynamic>> categoriesList = [
  {"title": "All", "image": 'assets/images/homecatgeoryicon1.png'},
  {"title": "Electronics", "image": 'assets/images/homecatgeoryicon2.png'},
  {"title": "Accessories", "image": 'assets/images/homecatgeoryicon3.png'},
  {"title": "Watches", "image": 'assets/images/homecatgeoryicon4.png'},
  {"title": "Camera", "image": 'assets/images/homecatgeoryicon5.png'}
];
