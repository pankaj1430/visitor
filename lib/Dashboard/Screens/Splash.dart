import 'package:flutter/material.dart';
import 'package:visiter_app/Dashboard/Screens/Dashboard.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      nextScreenReplacement(context, const Dashboard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK_COLOR,
      body: Center(
        child: Image.asset('assets/images/dashboard.png'),
      ),
    );
  }
}
