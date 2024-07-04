import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';

class FeedBack extends StatefulWidget {
  FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> with TickerProviderStateMixin {
  AnimationController? controller;
  bool determinate = false;

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
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Feedback Ratings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Last 12 months')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Positive',
                      ),
                      Text(
                        '22' ,
                        style: TextStyle(
                            color: Color(
                              0xff8B2CA0,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Positive',
                      ),
                      Text(
                        '21' ,
                        style: TextStyle(
                            color: Color(
                              0xff8B2CA0,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Positive',
                      ),
                      Text(
                        "222",
                        style: TextStyle(
                            color: Color(
                              0xff8B2CA0,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            'DETAILED SELLER Ratings',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            'LAST 12 MONTHS',
            style: TextStyle(fontSize: 10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Description Accuracy'),
                  Obx(
                    () => Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height:,
                      child: const LinearProgressIndicator(
                        value: 11,
                        // Set the alue to 0.5 for half-filled progress
                        backgroundColor:
                            Colors.grey, // Optional: Customize background color
                        valueColor: AlwaysStoppedAnimation<Color>(Color(
                            0xffFFA149)), // Optional: Customize progress color
                      ),
                    ),
                  ),
                  Container(
                    // height: 30, // Set the desired height here

                    child: const Card(
                      // margin: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      elevation: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '22',
                          style:
                              TextStyle(color: Color(0xffFFA149), fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shipping Cost'),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    // height:,
                    child: const LinearProgressIndicator(
                      value:
                          12, // Set the value to 0.5 for half-filled progress
                      backgroundColor:
                          Colors.grey, // Optional: Customize background color
                      valueColor: AlwaysStoppedAnimation<Color>(Color(
                          0xffFFA149)), // Optional: Customize progress color
                    ),
                  ),
                  Container(
                    // height: 30, // Set the desired height here

                    child: const Card(
                      // margin: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      elevation: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "21",
                          style:
                              TextStyle(color: Color(0xffFFA149), fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Delivery Speed'),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    // height:,
                    child: const LinearProgressIndicator(
                      value:
                          22, // Set the value to 0.5 for half-filled progress
                      backgroundColor:
                          Colors.grey, // Optional: Customize background color
                      valueColor: AlwaysStoppedAnimation<Color>(Color(
                          0xffFFA149)), // Optional: Customize progress color
                    ),
                  ),
                  Container(
                    // height: 30, // Set the desired height here

                    child: const Card(
                      // margin: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      elevation: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '22',
                          style:
                              TextStyle(color: Color(0xffFFA149), fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Customer Care'),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    // height:,
                    child: const LinearProgressIndicator(
                      value:
                          11, // Set the value to 0.5 for half-filled progress
                      backgroundColor:
                          Colors.grey, // Optional: Customize background color
                      valueColor: AlwaysStoppedAnimation<Color>(Color(
                          0xffFFA149)), // Optional: Customize progress color
                    ),
                  ),
                  Container(
                    // height: 30, // Set the desired height here

                    child: const Card(
                      // margin: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      elevation: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "wqw",
                          style:
                              TextStyle(color: Color(0xffFFA149), fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // LinearProgressIndicator(
              //   minHeight: 3,
              //    color: Color(0xffFFA149),
              //   value: controller!.value,
              //   semanticsLabel: 'Linear progress indicator',
              // ),

              // LinearProgressIndicator(
              //   minHeight: 3,
              //    color: Color(0xffFFA149),
              //   value: controller!.value,
              //   semanticsLabel: 'Linear progress indicator',
              // ),

              // LinearProgressIndicator(
              //   minHeight: 3,
              //    color: Color(0xffFFA149),
              //   value: controller!.value,
              //   semanticsLabel: 'Linear progress indicator',
              // ),

              // LinearProgressIndicator(
              //   color: Color(0xffFFA149),
              //   minHeight: 3,

              //   value: controller!.value,
              //   semanticsLabel: 'Customer Care',
              // ),

              //  SizedBox(height: 10),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Text(
              //         'determinate Mode',
              //         style: Theme.of(context).textTheme.titleSmall,
              //       ),
              //     ),
              //     Switch(
              //       value: determinate,
              //       onChanged: (bool value) {
              //         setState(() {
              //           determinate = value;
              //           if (determinate) {
              //             controller!.stop();
              //           } else {
              //             controller!
              //               ..forward(from: controller!.value)
              //               ..repeat();
              //           }
              //         });
              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            'Seller Feedback (200)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        listsellershopfeedback("feedbackdata"),
        listsellershopfeedback("feedbackdata"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: ElevetedButton(
            buttonName: 'See All Feedback',
            textColor: Colors.white,
            ontap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ReportSeller()),
              // );
            },
            fontSize: 14,
            width: MediaQuery.of(context).size.width * 0.92,
            gradientColors: [const Color(0xFF8B2CA0), const Color(0xFF00C3C9)],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
      ]),
    ));
  }

  Padding listsellershopfeedback(feedbackdata) {
    String _format(int n) => n.toString().padLeft(2, '0');
    // String formattedDate =
    //     '${feedbackdata?.createdAt.year}-${_format(feedbackdata?.createdAt.month)}-${_format(feedbackdata?.createdAt.day)} ${_format(feedbackdata?.createdAt.hour)}:${_format(feedbackdata?.createdAt.minute)}:${_format(feedbackdata?.createdAt.second)}';
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
      child: Card(
        elevation: 6,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // CircleAvatar(
                    //   radius: 20,
                    //   child: Image.network(
                    //       "https://notnewbackend.testingwebsitelink.com/"),
                    // ),
                    // Image.asset('assets/store2.png'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    const Text("danny"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    const Text("12/04/2024")
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "message is goof" ,
                  style: TextStyle(fontSize: 10),
                ),
                const Divider(),
                const Text(
                  "product name",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
