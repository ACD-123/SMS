import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/controller/homeguestcontroller.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final homeguestcontroller =
      Get.put(HomeGuestController(authRepo: Get.find()));
  @override
  Widget build(BuildContext context) {
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
          "Female Bags",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
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
                    width: 60.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.59),
                        color: const Color(0xffEEEAEA)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 7, right: 7),
                      child: TextFormField(
                        style: TextStyle(fontSize: 14.sp),
                        decoration: InputDecoration(
                          prefixIcon: Text(
                            "Did you mean: ",
                            style: TextStyle(
                                fontSize: 14.sp, color: Color(0xff2E3192)),
                          ),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(bottom: 18),
                          hintText: "Female Bags",
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                        onSaved: (value) {},
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 4.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.79),
                          color: const Color(0xffEEEAEA)),
                      child: Center(
                          child: Image.asset(
                        'assets/images/sorticon.png',
                        scale: 1.5,
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteConstants.searchfilterscreen);
                    },
                    child: Container(
                      height: 4.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.79),
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
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Showing Results ',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff9A9A9A),
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: '(100 items)',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Obx(
                        () => GestureDetector(
                            onTap: () {
                              homeguestcontroller.updatesavesearch();
                            },
                            child: Icon(
                              homeguestcontroller.issavesearch.value
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: Color(0xff2E3192),
                              size: 16.sp,
                            )),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Save this Search",
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 9.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: searchshowingresultrowlist.length,
                          itemBuilder: (context, index) {
                            final showingresultlistdata =
                                searchshowingresultrowlist[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                height: 9.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffEFF0F5)),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          showingresultlistdata["image"],
                                          width: 18.w,
                                          height: 5.h,
                                          fit: BoxFit.fill,
                                        )),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        showingresultlistdata["title"],
                                        style: TextStyle(
                                            color: const Color(0xff000000),
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                  ],
                                ),
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
                      childAspectRatio: 0.85,
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

//////////searchshowingresult row list
List<Map<String, dynamic>> searchshowingresultrowlist = [
  {
    "title": "Louis Vuitton",
    "image": 'assets/images/searchshowingresultimag1.png'
  },
  {"title": "Gucci", "image": 'assets/images/searchshowingresultimag2.png'},
  {"title": "Chanel", "image": 'assets/images/searchshowingresultimag3.png'},
  {"title": "Prada", "image": 'assets/images/searchshowingresultimag4.png'},
  {"title": "Dior", "image": 'assets/images/searchshowingresultimag5.png'},
  {"title": "Versace", "image": 'assets/images/searchshowingresultimag6.png'}
];

//////searchshowing result grid list
List<Map<String, dynamic>> searchshowingresultgridlist = [
  {
    "name": "Handbags",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag7.png",
    "ratings": '(65)',
  },
  {
    "name": "Female Handbags",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag8.png",
    "ratings": '(65)',
  },
  {
    "name": "Handbags",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag9.png",
    "ratings": '(65)',
  },
  {
    "name": "Female Handbags",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag10.png",
    "ratings": '(65)',
  },
  {
    "name": "Handbags",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag9.png",
    "ratings": '(65)',
  },
  {
    "name": "Female Handbags",
    "price": '\$260',
    "discountprice": "\$360",
    "image": "assets/images/searchshowingresultimag10.png",
    "ratings": '(65)',
  },
];

////////////searchwordsaved
Padding searchwordsavedbottomsheet(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 12, left: 12, bottom: 20),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.4.h,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(12)),
              width: 30.w,
              height: 0.6.h,
            ),
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'Confirm Clearing All Paid Bills',
              style: TextStyle(
                  color: Color(0xff0C0C0C), fontWeight: FontWeight.w400),
            ),
          )),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'Clear all bills marked as Paid?',
              style: TextStyle(
                  color: Color(0xff0C0C0C),
                  fontWeight: FontWeight.w400,
                  fontSize: 11),
            ),
          )),
          SizedBox(
            height: 3.h,
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    ),
  );
}
