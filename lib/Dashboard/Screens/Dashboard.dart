import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:visiter_app/Dashboard/Widgets/MyDrawer.dart';
import 'package:visiter_app/Dashboard/blocs/DashboardBloc/DashboardBloc.dart';
import 'package:visiter_app/Dashboard/blocs/DashboardBloc/DashboardEvent.dart';
import 'package:visiter_app/Login/Screens/Login.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? userId;
  @override
  void initState() {
    super.initState();

    getToken();

    Future.delayed(Duration(seconds: 1), () {
      // get dashboard data
      context.read<DashboardBloc>().add(LoadDashboardEvent(userId: userId));
    });
  }

  void getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (sp.containsKey("user_id")) {
      setState(() {
        userId = sp.getInt("user_id").toString();
      });
    } else {
      nextScreenReplacement(context, Login());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BLACK_COLOR,
        appBar: AppBar(
          title: Text("Quality Designer"),
        ),
        drawer: const MyDrawer(),
        body: Center(
          child: Image.asset(
            'assets/images/dashboard.png',
            width: MediaQuery.of(context).size.width,
          ),
        ));
  }
}
