import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          buildContainerWithContent(
              context: context,
              price: '200',
              description: "asdads",
              imagePath: 'assets/images/profileseller.png',
              saleprice: '200'),
          buildContainerWithContent(
              context: context,
              price: '200',
              description: "asdads",
              imagePath: 'assets/images/profileseller.png',
              saleprice: '200'),
          buildContainerWithContent(
              context: context,
              price: '200',
              description: "asdads",
              imagePath: 'assets/images/profileseller.png',
              saleprice: '200')
        ]),
      ),
    );
  }
}

Widget buildContainerWithContent({
  required BuildContext context,
  required String imagePath,
  required String description,
  required String price,
  required String saleprice,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0),
    child: Card(
      color: Colors.white,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceA.,
          children: [
            // NetworkImage(url)
            // Image.asset(imagePath), // Load your image here
            Row(
              children: [
                Center(
                  child: Image.asset(
                    imagePath,
                    height: MediaQuery.of(context).size.height * 0.1,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('@Superman  (33). '),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text('10 days ago')
                      ],
                    ),
                    Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star_purple500_sharp,
                                  color: const Color(0xffFFAD33),
                                  size: 16.sp,
                                ))),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
              style: TextStyle(fontSize: 12),
            )
            // SizedBox(
            //   height: 4,
            // ),

            // SizedBox(
            //   height: 3,
            // ),

            // SizedBox(
            //   height: 3,
            // ),
          ],
        ),
      ),
    ),
  );
}
