import 'package:flutter/material.dart';
import 'package:visiter_app/utils/mycolors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: Center(
        child: Text("Privacy Policy"),
      ),
    );
  }
}
