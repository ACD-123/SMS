import 'package:flutter/material.dart';

class AboutSeller extends StatelessWidget {
  const AboutSeller({super.key});

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
                              'https://s3-alpha-sig.figma.com/img/7903/ff22/cc13882549c18fbb88d4f8e2309d3b90?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NHXykSKKONbvBjUxip~YD44-HXGwicBynwZc7WnDZa8NutqmHv3mYCUwXw4FoM~aJ3l7Bo4cueQzlONlevLuE2mBK84bvyzfk2Iju7sZzVz9IbP8pDTl7IWPI-MukH2pJL-CgtlIR-cTCxS6HrCgpD0vdMcbOQ31N6h2PI2axs4xFLTDH9wYgSjHrPpQgT8RmAlxFjcWxcyCFIwq2eyAYfQHX-NjVnXoFVNY57OpV8VaMWvnSgNv3GCnbiZod~7SgacwGGmzYreKJPJnAI-Zb~jTrfFlsOr0EjDKQHg65spnaSXh~2bcluve2KzRY2gp6UpWjZpOg7XQ2NBL9ympXw__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/3b13/ace2/7131a506144131cb0d17ede81971b89b?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S96OM-WExnqKhSMd9ph3xDO05dTsiEtscyy0~MIG8cKj3wsCtmoqmtxjVHH6TGFuEhjxhBoAnFhLrl4uFpL-CtxLUaMBIWqGl7Ua3kPwiddrqrNlWTNGRd41MngyaRdZ0rsgBd5VHb8fnZC0LzqBJa-LXerVvTsgAdG1x~kQoZjtVHf6xaIilWz56nT4N6tYkAKD05asS7WfyLWwj4nIcXZWZqNDAi9x0W2-BooG13KX~nIReGIqu90khk7dgj0BW9dAAz5f5UTk6GiSNKwHzCCnOG63VVcuzkMkWV94jxnImJnG1wgl~BvE5cqbZGmTRHPHw2pPHTwR3BUBrkCUVg__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/6aed/def2/88166e120357567098c36644647b8849?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EGfDfNnzLKv8ynYXMSQd20-9Jb8uJqZ16xTuWpUqtZOxpN7m3rUJtPS-VqwefTkeBQaYs7rNFVhW9dgVOVhxAgJTCI0nTFTsoLnmSe6cQlOP2BmTggsd9az-tGRF7~0ffYXNOZ01ttfwu7Zn6ipdINnXA8uI2dJP3Gmf1F1rJFqMq~GzisXMib26ZP0Y3dEAH3E7~kFz0Js34QjuInLGYnlS5xxshhaqL16rj6yMKqQoPymS-rvxi~9ZE3Fk0eR8N8SdmNdq8guH2Oi1flPht1WNefTxj9FVMpqk-qOs6KKaEWgIuUrRGlcDIYdkiFnFAH39dNd4x4qYdiEy8nET8Q__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/3d39/25b4/43385efb5c7ce6e7f6c4b8a2da423de9?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=o-R~XQBZaQ570S1mqgBvy0upqK2HJuc9vaUZc8R8O0nALlhOS1WfLhy66eFX6vG5cmMmbwzRNHs1pnlbHJ691ZTu4QQShpRlnUBenj5uus-VmAm9bZK2aGdv10euu3EtX-5e-T-ylGY6YrV2mhyAQ01IVAfi-PtOqUJXoXA~GMftEEIoE2ScyJB9wALeZ9ap6jLpubThKPwuYYZ0UolSiqvyZR86B7cCzYC9U5LZpqeWg8Vt8sWsV59Pr7Gu7u1KnQuHxmulqCCHHX3xAScfeD7y9Iaf0P-WCIt2BWWaafmIMqrHvKnadI5DNzhgt6wO3DYGarzsIbiE~l0rDb~K2A__'),
                        ),
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/306d/75cb/63fe664bf4ddfa3470a979fdeab2d327?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CYw0dodPcSBBdYdWy-IqsaHRyvicXZAwxVrBSb9H3wv5ExV6JDnxm6eYO5u4~cPXH~znjBiLTdYV4HreCQXWDdyUzSYYZuEJZsi1PYu4y~L7kdbr2PD7a2uDSPQHxQDmBtHpRA3tmlWZyzQWW~cAWdyKDg1Sg1jbLs6idwGj9JFie78cDHl1Vn4QdinW37FGrMRIzU8qiDdHAVGPbe8-DN6sMxocOaDdGCUVKTA7fXZq8EH5sbgSO9Fu54TtcJcAUhXkgXYafXYRJdigA02lBvR1aCX5me0Y7BXYAHcjTPSz6GRLTtllyBUKxlZ~7HxHMMQ0f9X~DYGM0646JVfCnQ__'),
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
