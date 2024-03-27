import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:visiter_app/Dashboard/Widgets/CustomButton.dart';
import 'package:visiter_app/Dashboard/blocs/EnquiryBloc/EnquiryBloc.dart';
import 'package:visiter_app/Dashboard/blocs/EnquiryBloc/EnquiryEvent.dart';
import 'package:visiter_app/Dashboard/blocs/EnquiryBloc/EnquiryState.dart';
import 'package:visiter_app/Login/Screens/Login.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController refBy = TextEditingController();
  TextEditingController product = TextEditingController();
  TextEditingController members = TextEditingController();
  TextEditingController dof = TextEditingController();
  TextEditingController appointmentTime = TextEditingController();
  TextEditingController appointmentDate = TextEditingController();
  String? userId;

  dynamicDatePicker(String type) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2025));

    if (pickedDate != null) {
      setState(() {
        if (type == "dof") {
          dof.text = DateFormat('dd-MM-yyyy').format(pickedDate);
        } else {
          appointmentDate.text = DateFormat('dd-MM-yyyy').format(pickedDate);
        }
      });
    }
  }

  dynamicTimePicker(String type) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (pickedTime != null) {
      setState(() {
        appointmentTime.text =
            '${pickedTime.hour.toString().padLeft(2, '0')}:${pickedTime.minute.toString().padLeft(2, '0')}:00';
      });
    }
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
  void initState() {
    super.initState();
    getToken();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    mobile.dispose();
    address.dispose();
    refBy.dispose();
    product.dispose();
    members.dispose();
    appointmentDate.dispose();
    appointmentTime.dispose();
    dof.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK_COLOR,
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: name,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration: inputDecoration.copyWith(
                        labelText: "Visitor Name",
                      ),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: email,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Email ID"),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: mobile,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Mobile No."),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: address,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Address"),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: message,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Message"),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: refBy,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Reference By"),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: product,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Product Name"),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: members,
                      style: TextStyle(color: WHITE_COLOR),
                      decoration:
                          inputDecoration.copyWith(labelText: "Members"),
                    ),
                    DH("16"),
                    TextFormField(
                      controller: dof,
                      readOnly: true,
                      onTap: () {
                        dynamicDatePicker('dof');
                      },
                      style: TextStyle(color: WHITE_COLOR),
                      decoration: inputDecoration.copyWith(
                          suffixIcon: const Icon(Icons.calendar_month),
                          labelText: "Date of functions"),
                    ),
                    DH("16"),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: appointmentDate,
                            readOnly: true,
                            style: TextStyle(color: WHITE_COLOR),
                            onTap: () {
                              dynamicDatePicker('appointmentDate');
                            },
                            decoration: inputDecoration.copyWith(
                                suffixIcon: const Icon(Icons.calendar_month),
                                labelText: "Date"),
                          ),
                        ),
                        DW("12"),
                        Expanded(
                          child: TextFormField(
                            controller: appointmentTime,
                            readOnly: true,
                            style: TextStyle(color: WHITE_COLOR),
                            onTap: () {
                              dynamicTimePicker('appointmentTime');
                            },
                            decoration: inputDecoration.copyWith(
                                suffixIcon: const Icon(Icons.access_time),
                                labelText: "Time"),
                          ),
                        )
                      ],
                    ),
                    DH("16"),
                    BlocConsumer<EnquiryBloc, EnquiryState>(
                      listener: (context, state) {
                        if (state is FailEnquiryState) {
                          showMessage(context, state.message);
                        }

                        if (state is SuccessEnquiryState) {
                          name.clear();
                          email.clear();
                          mobile.clear();
                          address.clear();
                          message.clear();
                          refBy.clear();
                          product.clear();
                          members.clear();
                          appointmentDate.clear();
                          appointmentTime.clear();
                          dof.clear();
                          showMessage(context, state.message);
                        }
                      },
                      builder: (context, state) {
                        if (state is LoadingEnquiryState) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (state is InitialEnquiryState ||
                            state is FailEnquiryState ||
                            state is SuccessEnquiryState) {
                          return GestureDetector(
                              onTap: () {
                                context.read<EnquiryBloc>().add(
                                    ButtonClickEnquiryEvent(
                                        name: name.text,
                                        email: email.text,
                                        address: address.text,
                                        mobile: mobile.text,
                                        message: message.text,
                                        refBy: refBy.text,
                                        product: product.text,
                                        members: members.text,
                                        addedBy: userId,
                                        att: appointmentDate.text +
                                            ' ' +
                                            appointmentTime.text,
                                        dof: dof.text));
                              },
                              child: CustomButton("Save Visit"));
                        }
                        return Container();
                      },
                    )
                  ]))),
    );
  }
}
