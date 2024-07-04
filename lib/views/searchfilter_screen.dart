import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/controller/homeguestcontroller.dart';

class SearchFilterScreen extends StatefulWidget {
  const SearchFilterScreen({super.key});

  @override
  State<SearchFilterScreen> createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
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
          "Search Filters",
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: "Choose Category",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff818181),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                  contentPadding: EdgeInsets.only(left: 8, right: 2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                value: homeguestcontroller.selectedsearchfilterscategories,
                onChanged: (newValue) {
                  homeguestcontroller.selectedsearchfilterscategories =
                      newValue!;
                },
                items: homeguestcontroller.searchfilterscategories.map((size) {
                  return DropdownMenuItem<String>(
                    value: size,
                    child: Text(
                      size,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff818181),
                      ),
                    ),
                  );
                }).toList(),
                icon: CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  child: Image.asset("assets/images/arrowdropdown.png"),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                "Price",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Min',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff757575)),
                  ),
                  Obx(
                    () => Flexible(
                      child: RangeSlider(
                        values: homeguestcontroller.currentRangeValues.value,
                        max: 1000,
                        divisions: 5,
                        labels: RangeLabels(
                          homeguestcontroller.currentRangeValues.value.start
                              .round()
                              .toString(),
                          homeguestcontroller.currentRangeValues.value.end
                              .round()
                              .toString(),
                        ),
                        activeColor: Color(0xff2E3192),
                        onChanged: (RangeValues values) {
                          homeguestcontroller
                              .updatesearchfilterpriceRangeValues(values);
                        },
                      ),
                    ),
                  ),
                  Text(
                    'Max',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff757575)),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Container(
              //         width: 9.w,
              //         height: 5.h,
              //         child: TextFormField(
              //           decoration: InputDecoration(
              //             hintText: 'Min',
              //             fillColor: Colors.white,
              //             hintStyle: TextStyle(
              //               fontSize: 14,
              //               color: Colors.grey,
              //             ),
              //             enabledBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(15),
              //               borderSide: BorderSide(color: Color(0xffDBDBDB)),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(15),
              //               borderSide: BorderSide(color: Color(0xffDBDBDB)),
              //             ),
              //             contentPadding: EdgeInsets.all(15),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 3.w),
              //     Container(
              //       decoration: BoxDecoration(
              //           color: Color(0xffDBDBDB),
              //           borderRadius: BorderRadius.circular(12)),
              //       width: 10.w,
              //       height: 0.2.h,
              //     ),
              //     SizedBox(width: 3.w),
              //     Expanded(
              //       child: Container(
              //         width: 9.w,
              //         height: 5.h,
              //         child: TextFormField(
              //           decoration: InputDecoration(
              //             hintText: 'Max',
              //             fillColor: Colors.white,
              //             hintStyle: TextStyle(
              //               fontSize: 14,
              //               color: Colors.grey,
              //             ),
              //             enabledBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(15),
              //               borderSide: BorderSide(color: Color(0xffDBDBDB)),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(15),
              //               borderSide: BorderSide(color: Color(0xffDBDBDB)),
              //             ),
              //             contentPadding: EdgeInsets.all(15),
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 1.h,
              ),
              Divider(),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                "Brands",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: "Choose Brand",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff818181),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0xffDBDBDB)),
                  ),
                  contentPadding: EdgeInsets.only(left: 8, right: 2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                value: homeguestcontroller.selectedsearchfiltersbrands,
                onChanged: (newValue) {
                  homeguestcontroller.selectedsearchfiltersbrands = newValue!;
                },
                items: homeguestcontroller.searchfiltersbrands.map((size) {
                  return DropdownMenuItem<String>(
                    value: size,
                    child: Text(
                      size,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff818181),
                      ),
                    ),
                  );
                }).toList(),
                icon: CircleAvatar(
                  backgroundColor: Color(0xffD9D9D9),
                  child: Image.asset("assets/images/arrowdropdown.png"),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                "Ratings",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ratingcontainer("5"),
                  ratingcontainer("Less than 4"),
                  ratingcontainer("Less than 3"),
                  ratingcontainer("Less than 2"),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                "Condition",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Obx(() => checkbox(
                  title: 'All',
                  value: homeguestcontroller.searchfilterconditionall.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterconditionall(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'Brand new',
                  value:
                      homeguestcontroller.searchfilterconditionbrandnew.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterconditionbrandnew(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'Used',
                  value: homeguestcontroller.searchfilterconditionUsed.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterconditionUsed(newvalue);
                  })),

              const Divider(),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                "Delivery location",
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Obx(() => checkbox(
                  title: 'World Wide',
                  value: homeguestcontroller
                      .searchfilterdeliverylocationworldwide.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterdeliverylocationworldwide(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'Asia',
                  value: homeguestcontroller
                      .searchfilterdeliverylocationAsia.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterdeliverylocationAsia(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'Europe',
                  value: homeguestcontroller
                      .searchfilterdeliverylocationEurope.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterdeliverylocationEurope(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'America',
                  value: homeguestcontroller.searchfilterconditionAmerica.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterdeliverylocationAmerica(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'Africa',
                  value: homeguestcontroller
                      .searchfilterdeliverylocationAfrica.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterdeliverylocationAfrica(newvalue);
                  })),
              Obx(() => checkbox(
                  title: 'Oceana',
                  value: homeguestcontroller
                      .searchfilterdeliverylocationOceana.value,
                  onChanged: (newvalue) {
                    homeguestcontroller
                        .updatesearchfilterdeliverylocationOceana(newvalue);
                  })),

              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff2E3192)),
                  child: Center(
                    child: Text("Apply",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////ratings container
Container ratingcontainer(String ratings) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xff1375EA).withOpacity(0.2),
        borderRadius: BorderRadius.circular(18.64)),
    width: 21.w,
    height: 4.h,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFAD33),
          size: 18.sp,
        ),
        Text(
          ratings,
          style: TextStyle(color: Color(0xff818181), fontSize: 12.sp),
        ),
      ],
    ),
  );
}

///////////resubale checkbox
Padding checkbox({
  required String title,
  required final bool value,
  required final void Function(bool?) onChanged,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 9),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(color: Color(0xff8D8D8D)),
        ),
        Checkbox(
          value: value,
           side: BorderSide(color: Color(0xff1375EA)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onChanged: onChanged,

          activeColor: Color(0xff1375EA),
        ),
      ],
    ),
  );
}
