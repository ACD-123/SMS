import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';

class ReportSeller extends StatefulWidget {
  ReportSeller({super.key});

  @override
  State<ReportSeller> createState() => _ReportSellerState();
}

class _ReportSellerState extends State<ReportSeller>
    with TickerProviderStateMixin {
  AnimationController? controller;
  bool determinate = false;
  TextEditingController settingcontroller = TextEditingController();
  TextEditingController messagecontroller = TextEditingController();
  final String _selectedValue =
      'Report 1'; // Variable to store selected dropdown value
  final List<String> countries = [
    'Poland',
    'Argentina',
    'Brazil',
    'Botswana',
  ];
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller!.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/arrowback1.png')),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(
                  0xff000000,
                ),
                Color(0xff9F0F0F)
              ])),
              height: 130,
              width: Get.width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Report An Issue With A video',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Text(
                      'This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Reason To Report',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                        height:
                            8.0), // Adjust the space between text and underline
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.green
                          ], // Customize gradient colors
                        ),
                      ),
                      child: SizedBox(
                        width: 120.0, // Adjust the width of the underline
                        height: 2.0, // Adjust the height of the underline
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius:
                        BorderRadius.circular(10.0), // Add circular border
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  child: TextFormField(
                    controller: settingcontroller,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      border:
                          InputBorder.none, // Remove default input field border
                      hintMaxLines: 4,
                      contentPadding:
                          EdgeInsets.all(8.0), // Adjust text padding
                    ),
                  ),
                ),
              ),
              //     Padding(
              //       padding: EdgeInsets.only(right: 10.0),
              //       child: Container(
              //         height: 30,
              //         decoration: BoxDecoration(
              //           border: Border.all(color: Colors.grey),
              //           borderRadius: BorderRadius.circular(10),
              //           // Remove the Border.all property to remove the border line
              //         ),
              //         width: 200.0, // Set the width of the dropdown box
              //         child: DropdownButton<String>(
              //           // menuMaxHeight: 40,
              //           value: _selectedValue,
              //           onChanged: (newValue) {
              //             setState(() {
              //               _selectedValue = newValue!;
              //             });
              //           },
              //           items: <String>[
              //             'Report 1',
              //             'Report 2',
              //             'Report 3',
              //             'Report 4'
              //           ].map((String value) {
              //             return DropdownMenuItem<String>(
              //               value: value,
              //               child: Padding(
              //                 padding: EdgeInsets.only(
              //                     left: 8.0), // Add space between arrow and text
              //                 child: Text(value),
              //               ),
              //             );
              //           }).toList(),
              //           style: TextStyle(
              //             color: Colors.black, // Text color
              //           ),
              //           icon: Padding(
              //             padding: EdgeInsets.only(left: 70.0),
              //             child: Image.asset('assets/dropdowndowngradient.png'),
              //           ), // Customizing the dropdown arrow icon
              //           iconSize:
              //               30.0, // Adjust the size of the dropdown arrow icon
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Report Request',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(
                          height:
                              8.0), // Adjust the space between text and underline
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.green
                            ], // Customize gradient colors
                          ),
                        ),
                        child: SizedBox(
                          width: 130.0, // Adjust the width of the underline
                          height: 2.0, // Adjust the height of the underline
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(10.0), // Add circular border
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 150,
                    child: TextFormField(
                      controller: messagecontroller,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        border: InputBorder
                            .none, // Remove default input field border
                        hintMaxLines: 4,
                        contentPadding:
                            EdgeInsets.all(8.0), // Adjust text padding
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Image.asset('assets/images/noticon.png'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  const Text(
                    'Make Sure You Reason And Report Should Be Authentic',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: ElevetedButton(
                color: const Color(0xff2E3192),
                buttonName: 'Send Report',
                textColor: Colors.white,
                ontap: () {
                  // settingcontroller.createreasonreport(
                  //     seller_guid: "",
                  //     reason: settingcontroller.reasoncontroller.text,
                  //     message: settingcontroller.reasonmessage.text);
                  // // Navigator.push(
                  // //   context,
                  //   MaterialPageRoute(builder: (context) => SemiRegistration()),
                  // );
                },
                fontSize: 14,
                width: MediaQuery.of(context).size.width * 0.92,
                gradientColors: [
                  const Color(0xFF8B2CA0),
                  const Color(0xFF00C3C9)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
