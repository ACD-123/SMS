import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/customcomponents/custom_popup_dialogwhite.dart';
import 'package:sms/customcomponents/customelevatedbutton.dart';

class UserFeedback extends StatefulWidget {
  const UserFeedback({super.key});

  @override
  State<UserFeedback> createState() => _UserFeedbackState();
}

void showSuccessDialogAndNavigateToLogin(context) {
  Get.dialog(
    WhiteCustomPopupDialog(
      message: 'Feedback Added!',
      image: 'assets/images/sms 5.png',
    ),
  );
}

class _UserFeedbackState extends State<UserFeedback> {
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
            'Feedback',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 2,
              child: Container(
                height: 120,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text('How was your Experience'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/7903/ff22/cc13882549c18fbb88d4f8e2309d3b90?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PQpr27eB3WWI637cc81TjxkJDzns8xURvw3iOCTJbulNa9bi6wrIgfcYs2dN5PPMN8AD7ouPRGIHxrYksANZ0qovfK5o0ZqsF14uqUnMjtBiwM3POzmWO1eIk8mcirLq34xP2gSLovejfrgipDHWBlO3nOKMHhh1DystcWCXr3~xCBHTUciWXwUt-CcbFq9LZVOJ~bo~~IRL14lZMuVKGVz-jt54Kl4xOayjuUHDs8TJGwxt66AVo4AiY5Dyyuk~xcUfSW6VLLRMR9oAy~JBCWrzCfLjv0Xxwg5~UaunwoM-DbD4878wCzHIY1Ve9ZUdi2u6Ok9ujCHjJrrDcK6SJQ__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/3b13/ace2/7131a506144131cb0d17ede81971b89b?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JpPDg74Kt9s7dX2pjQev0TRRDyETOpJI8d~9gYyCC0fMuF8C2Cj8aKtGH5ZalcoykgtD7gPQ82QsjNJaIEe3jfX1TRgD9eJWYhpHH9qAcSUk-0Zzc62sCtvEZSTUTyzv-FZ5SgAEhhY84ylR-IH3wihIziA-qx3h--HCIxVlr8n8kqvJ4C3wPBk3hPLjlBV3UFXzXpdjqcveiQDVSUQvJZV~5gzRW5s8R77qPBY~Xs4RsRp7byuKadokGmumPBU1y6D3Y7zdtsKmgv~W1EDtZD2v8ewUPb2PCUKeVv8G4P0rH2g3cpK1W44~Qiz5I4B9XMNXTHbDKMPcPcP1KjzAug__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/6aed/def2/88166e120357567098c36644647b8849?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MMxy0KJb2gxB59wi76MxgC-lcqRcr2OUj30ypCYA2GTcVKqdTNVv2AKDrLLDOEytp1BfcdupGJfkqa2QrMaKyYBrk4FbhoOsahO2w7qEYnBqHb6Gkr9Bk5-bpS~Sqt49BdMoJYeg03YgTRae3BgdLqteuJJnYcnCelk4CqL~VNSIc8PwgRHXqZXcSFFIgFUAXBXZMBRZnGVLm9tADtt3bby7KrWyVG-YlR~XeEGw0oGDWCdfTVN-JxnGg5VhGrBKV5joA3b1DJxtVqm2fJzfER4I4Osuyw8rPwJlTvs0gh-lMmIUokTw1lf1zYfCWWpBzDEVkmTZfBLTDNy7DhV7-g__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/3d39/25b4/43385efb5c7ce6e7f6c4b8a2da423de9?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HbR2s1mrwwGiPdCa5JVVdCFwoci3G-CsNhe802cxEDF-AvmhY6YC-XjdSVrr05jARYM6ALg3zwWComKMU2YgKg9bycQ7NKthNEaWU7xH1CxneQ534~ToLAPc4K7e3MytAM7nx3cISinZK10nEUmsH3RYOM-aLbrSZtXnxC1vmePf7~~S5HgJKU1KKVtj1MrvLv7c-hfYpmmjwas-G0ilfTzOMJHYlxrFwS03ffis-yi9j2GMLWHs5fFQZS3zBmJVoZa7~w49wiIMLEB6~5~DCI-bR4rd1STKUVHquqYaCmWTMGLarubEtXd0ZducAsD-i2X1Wo6Sh4JuOyVEg7xmHQ__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/306d/75cb/63fe664bf4ddfa3470a979fdeab2d327?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EmOGZ2TvYyJIY8P1ZcTslw78cIGl3Q3DbwFhZC2uBsaLOKATNj8pP6j9oqaFlsAuZ3ON1cDsWBeearisTMqcvuk7Edqx0DRRnzqtn1aifX74GLlBjXD-T~IR1ncq-Y-u82Is2dc886BgrAW-ro8T3gnOsZ5QYotTlP1IACqYWpK7A~1~Te8OJbjoUq83~Zkh3rAvJLO51Wh95KfD-OIefCfRLJiHbNBs-hTYiN159his8zLws0Pe7bCfXBUuiIJevbD5iZZf5yzOmzu6CxDDc4gY9~vfq8w0eEr3o9PTkTbE3KiQXaoWDFn50KwVUjOrooBZZfRPLllhbq2Z52LINg__'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text('Comment, If Any?'),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 17.h,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.84),
                  border: Border.all(
                    color: Color(0xffD4D4D4),
                  )),
              child: TextFormField(
                maxLines: 7,
                style: TextStyle(fontSize: 14.sp),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  border: InputBorder.none,
                  hintText: "Write Something...",
                  hintStyle:
                      TextStyle(fontSize: 14.sp, color: Color(0xffD0D0D0)),
                ),
                onSaved: (value) {},
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            ElevetedButton(
              buttonName: 'Submit Feedback',
              textColor: Colors.white,
              ontap: () {
                showSuccessDialogAndNavigateToLogin(context);
              },
              fontSize: 14,

              width: MediaQuery.of(context).size.width,
              color: const Color(0xff2E3192),
              // gradientColors: [Color(0xFF8B2CA0), Color(0xFF00C3C9)],
            ),
          ],
        ),
      ),
    );
  }
}
