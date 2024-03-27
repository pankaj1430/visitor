import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:visiter_app/Dashboard/Screens/AboutUs.dart';

import 'package:visiter_app/Dashboard/Screens/ChangePassword.dart';
import 'package:visiter_app/Dashboard/Screens/ContactUs.dart';

import 'package:visiter_app/Dashboard/Screens/Support.dart';

import 'package:visiter_app/Login/Screens/Login.dart';
import 'package:visiter_app/utils/utils.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String? userId, userName, userEmail;
  @override
  void initState() {
    super.initState();

    getToken();
  }

  void getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (sp.containsKey("user_id")) {
      setState(() {
        userId = sp.getInt("user_id").toString();
        userEmail = sp.getString("user_email").toString();
        userName = sp.getString("first_name").toString();
      });
    } else {
      nextScreenReplacement(context, Login());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.jpg'),
              ),
              accountName: Text(userName.toString()),
              accountEmail: Text(userEmail.toString())),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              nextScreen(context, ContactUs());
            },
            leading: const Icon(Icons.contact_emergency),
            title: const Text("Add Visitor"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              nextScreen(context, const AboutUs());
            },
            leading: const Icon(Icons.support),
            title: const Text("About Us"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              nextScreen(context, const Support());
            },
            leading: const Icon(Icons.support),
            title: const Text("Support"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              nextScreen(context, const ChangePassword());
            },
            leading: const Icon(Icons.lock),
            title: const Text("Change Password"),
          ),
          ListTile(
            onTap: () async {
              Navigator.of(context).pop();
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();
              nextScreenReplacement(context, Login());
            },
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
          )
        ],
      ),
    );
  }
}
