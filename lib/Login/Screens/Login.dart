import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:visiter_app/Dashboard/Screens/ContactUs.dart';
import 'package:visiter_app/Dashboard/Screens/Dashboard.dart';
import 'package:visiter_app/Login/bloc/LoginBloc.dart';
import 'package:visiter_app/Login/bloc/LoginEvent.dart';
import 'package:visiter_app/Login/bloc/LoginState.dart';
import 'package:visiter_app/Widgets/RoundedButton.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    checkLogin();
  }

  checkLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (sp.containsKey("user_email") && sp.containsKey("user_id")) {
      nextScreenReplacement(context, ContactUs());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DH('35'),
              Center(
                  child: Image.asset(
                'assets/images/logo.jpg',
                width: 250,
                height: 150,
              )),
              Text(
                "Login your account",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              DH("10"),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: username,
                        style: TextStyle(color: WHITE_COLOR),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Currect Email";
                          }
                        },
                        decoration: inputDecoration.copyWith(
                            prefixIcon: Icon(
                          Icons.email,
                          color: WHITE_COLOR,
                        )),
                      ),
                      DH("16"),
                      TextFormField(
                        controller: password,
                        style: TextStyle(color: WHITE_COLOR),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return "Enter Currect Password";
                          }
                        },
                        decoration: inputDecoration.copyWith(
                            prefixIcon: Icon(
                          Icons.lock,
                          color: WHITE_COLOR,
                        )),
                      ),
                      DH("16"),
                      BlocConsumer<LoginBloc, LoginState>(
                        builder: (context, state) {
                          if (state is LoadingLoginState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (state is InitialLoginState ||
                              state is FailLoginState ||
                              state is SuccessLoginState) {
                            return Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          context.read<LoginBloc>().add(
                                              LoginButtonClickEvent(
                                                  username: username.text,
                                                  password: password.text));
                                        }
                                      },
                                      child: RoundedButton("Sign In")),
                                ),
                              ],
                            );
                          }
                          return Container();
                        },
                        listener: (context, state) {
                          if (state is FailLoginState) {
                            showMessage(context, state.message);
                          }

                          if (state is SuccessLoginState) {
                            nextScreenReplacement(context, Dashboard());
                          }
                        },
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
