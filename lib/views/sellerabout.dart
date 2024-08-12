import 'package:flutter/material.dart';

class SellerAbout extends StatelessWidget {
  const SellerAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset('assets/images/aboutimage.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Seller: ',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Mathew',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 8), // Adds some space between the texts
                  Text(
                    'Joined since: ',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2018',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Location: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'London',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
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
            )
          ]),
        ),
      ),
    );
  }
}
