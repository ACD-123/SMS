import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));

  @override
  Widget build(BuildContext context) {
    // final int selectedcategoryindex =  ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18.sp,
            )),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 25, top: 15, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 4.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEEEAEA)),
                child: TextFormField(
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
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Choose Category',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xff9A9A9A),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
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
                            bool isselectedcategoryindex = index ==
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
                                },
                                child: Container(
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: isselectedcategoryindex
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
                                                color: isselectedcategoryindex
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
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: searchshowingresultgridlist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.80,
                      mainAxisSpacing: 14,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final showingresultgriddata =
                        searchshowingresultgridlist[index];
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteConstants.productdetailscreen);
                      },
                      child: Container(
                        height: 32.h,
                        width: 50.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.53),
                                child: Image.asset(
                                  showingresultgriddata['image'],
                                  height: 18.h,
                                  width: 50.w,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text(
                              showingresultgriddata['name'],
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Text(showingresultgriddata['price'],
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0xff2E3192),
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(showingresultgriddata['discountprice'],
                                    style: TextStyle(
                                        fontSize: 13.sp,
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
                                              size: 15.sp,
                                            ))),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(showingresultgriddata['ratings'],
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
        ),
      ),
    );
  }
}

//////////categoires list
List<Map<String, dynamic>> categoriesList = [
  {"title": "All", "image": 'assets/images/homecatgeoryicon1.png'},
  {"title": "Electronics", "image": 'assets/images/homecatgeoryicon2.png'},
  {"title": "Accessories", "image": 'assets/images/homecatgeoryicon3.png'},
  {"title": "Gaming", "image": 'assets/images/categoireslistimage1.png'},
  {"title": "Camera", "image": 'assets/images/homecatgeoryicon5.png'}
];

//////categories products
List<Map<String, dynamic>> searchshowingresultgridlist = [
  {
    "name": "Apple iMac",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/categoiresgridimage1.png",
    "ratings": '(65)',
  },
  {
    "name": "Apple I phone 15 Plus",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/categoiresgridimage2.png",
    "ratings": '(65)',
  },
  {
    "name": "Sony Bravia",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/categoiresgridimage3.png",
    "ratings": '(65)',
  },
  {
    "name": "Bose QuietComfort",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/categoiresgridimage4.png",
    "ratings": '(65)',
  },
  {
    "name": "Sony Bravia",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/categoiresgridimage5.png",
    "ratings": '(65)',
  },
  {
    "name": "Bose QuietComfort",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/categoiresgridimage6.png",
    "ratings": '(65)',
  },
];
