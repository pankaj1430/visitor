import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:visiter_app/Login/bloc/LoginEvent.dart';
import 'package:visiter_app/Login/bloc/LoginState.dart';
import 'package:visiter_app/config/Apiurls.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialLoginState()) {
    on<LoginButtonClickEvent>(loginButtonClickEvent);
  }

  void loginButtonClickEvent(LoginButtonClickEvent event, Emitter emit) async {
    emit(LoadingLoginState());
    String username = event.username;
    String password = event.password;
    // HttpClient client = new HttpClient();
    Map data = {'key': Apiurls.KEY, 'username': username, 'password': password};

    dynamic response =
        await http.post(Uri.parse(Apiurls.LOGIN_USER), body: data);

    if (response.statusCode == 200) {
      dynamic jsonResponse = jsonDecode(response.body);
      dynamic userDetail = jsonResponse['data'];
      // get shared perference instance
      SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString("user_email", userDetail['user_email']);
      sp.setString("first_name", userDetail['first_name']);
      sp.setInt("user_id", userDetail['user_id']);

      emit(SuccessLoginState());
    } else if (response.statusCode == 401) {
      emit(FailLoginState(message: "Username or Password Incorrect."));
    }
  }
}
