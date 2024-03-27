import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:visiter_app/Dashboard/Widgets/CustomButton.dart';
import 'package:visiter_app/Dashboard/blocs/ChangePassword/ChangePasswordBloc.dart';
import 'package:visiter_app/Dashboard/blocs/ChangePassword/ChangePasswordEvent.dart';
import 'package:visiter_app/Dashboard/blocs/ChangePassword/ChangePasswordState.dart';
import 'package:visiter_app/Login/Screens/Login.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  String? userId;
  final formKey = GlobalKey<FormState>();
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
        print(userId);
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
          title: const Text("Change Password"),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: oldPassword,
                          obscureText: true,
                          style: TextStyle(color: WHITE_COLOR),
                          decoration: inputDecoration.copyWith(
                              labelText: "Old Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Old Password";
                            } else if (value.length < 6) {
                              return "Enter Minimum 6 Char. Password";
                            }
                          },
                        ),
                        DH("16"),
                        TextFormField(
                          controller: newPassword,
                          obscureText: true,
                          style: TextStyle(color: WHITE_COLOR),
                          decoration: inputDecoration.copyWith(
                              labelText: "New Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter New Password";
                            } else if (value.length < 6) {
                              return "Enter Minimum 6 Char. Password";
                            }
                          },
                        ),
                        DH("16"),
                        TextFormField(
                          controller: confirmPassword,
                          obscureText: true,
                          style: TextStyle(color: WHITE_COLOR),
                          decoration: inputDecoration.copyWith(
                              labelText: "Confirm Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Confirm Password";
                            } else if (value.length < 6) {
                              return "Enter Minimum 6 Char. Password";
                            }
                          },
                        ),
                        DH("16"),
                        BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
                          listener: (context, state) {
                            if (state is FailChangePasswordState) {
                              showMessage(context, state.message);
                            }

                            if (state is SuccessChangePasswordState) {
                              showMessage(context, state.message);
                              oldPassword.clear();
                              newPassword.clear();
                              confirmPassword.clear();
                            }
                          },
                          builder: (context, state) {
                            if (state is LoadingChangePasswordState) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is InitialChangePasswordState ||
                                state is FailChangePasswordState ||
                                state is SuccessChangePasswordState) {
                              return GestureDetector(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      if (newPassword.text !=
                                          confirmPassword.text) {
                                        showMessage(context,
                                            "Incorrect Confirm Password");
                                      } else {
                                        context.read<ChangePasswordBloc>().add(
                                            ChangePasswordButtonClickEvent(
                                                oldPassword: oldPassword.text,
                                                newPassword: newPassword.text,
                                                userId: userId.toString()));
                                      }
                                    }
                                  },
                                  child: CustomButton("Change Password"));
                            }
                            return Container();
                          },
                        )
                      ]),
                ))));
  }
}
