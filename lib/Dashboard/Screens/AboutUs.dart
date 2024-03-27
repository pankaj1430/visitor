import 'package:flutter/material.dart';
import 'package:visiter_app/utils/mycolors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
              "Established in the year 1999, QUALITY is one of the leading men's wear in both ethnic & formal wear in Bhilwara Rajasthan. QUALITY delivers with heritage design, quality and perfection."),
        ),
      ),
    );
  }
}
