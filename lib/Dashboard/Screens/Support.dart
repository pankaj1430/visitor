import 'package:flutter/material.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      appBar: AppBar(
        title: const Text("Support Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormLabel(
              "Location :",
            ),
            DH('10'),
            const Text(
                "Sitaram ji ki bawari,Near Dr. M.P. Agarwal, Bhopal Ganj,Bhilwara-311001,Rajasthan"),
            DH('20'),
            FormLabel(
              "Phone :",
            ),
            DH('10'),
            const Text("+91-78912-77777, +91-98292-30405, +91-98290-30990"),
            DH('20'),
            FormLabel(
              "Email :",
            ),
            DH('10'),
            const Text('qualitydesigners2@gmail.com')
          ],
        ),
      ),
    );
  }
}
