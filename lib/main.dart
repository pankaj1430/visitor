import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visiter_app/Dashboard/Screens/Splash.dart';

import 'package:visiter_app/Dashboard/blocs/ChangePassword/ChangePasswordBloc.dart';
import 'package:visiter_app/Dashboard/blocs/DashboardBloc/DashboardBloc.dart';
import 'package:visiter_app/Dashboard/blocs/EnquiryBloc/EnquiryBloc.dart';

import 'package:visiter_app/Dashboard/blocs/VahanBloc/UpdateVahanBloc.dart';
import 'package:visiter_app/Dashboard/blocs/VehicleListBloc/VehicleListBloc.dart';
import 'package:visiter_app/Login/bloc/LoginBloc.dart';
import 'package:visiter_app/utils/mycolors.dart';

class PostHttpOverrides extends HttpOverrides {
  HttpClient createHttpClient(context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = new PostHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoginBloc()),
        BlocProvider(create: (_) => VehicleListBloc()),
        BlocProvider(create: (_) => DashboardBloc()),
        BlocProvider(create: (_) => UpdateVahanBloc()),
        BlocProvider(create: (_) => ChangePasswordBloc()),
        BlocProvider(create: (_) => EnquiryBloc())
      ],
      child: MaterialApp(
          title: 'Quality Designer',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: false,
              primaryColor: ORANGE_COLOR,
              colorScheme: ColorScheme.light(primary: ORANGE_COLOR)),
          home: const Splash()),
    );
  }
}
