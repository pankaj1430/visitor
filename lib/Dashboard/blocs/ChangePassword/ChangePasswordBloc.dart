import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visiter_app/Dashboard/blocs/ChangePassword/ChangePasswordEvent.dart';
import 'package:visiter_app/Dashboard/blocs/ChangePassword/ChangePasswordState.dart';
import 'package:visiter_app/config/Apiurls.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(InitialChangePasswordState()) {
    on<ChangePasswordButtonClickEvent>(changePasswordButtonClickEvent);
  }

  void changePasswordButtonClickEvent(
      ChangePasswordButtonClickEvent event, Emitter emit) async {
    emit(LoadingChangePasswordState());

    String oldPassword = event.oldPassword;
    String newPassword = event.newPassword;
    String userId = event.userId;
    // HttpClient client = new HttpClient();
    Map data = {
      'key': Apiurls.KEY,
      'userId': userId,
      'old_pass': oldPassword,
      'new_pass': newPassword
    };

    dynamic response =
        await http.post(Uri.parse(Apiurls.CHANGE_PASSWORD), body: data);

    if (response.statusCode == 200) {
      dynamic jsonResponse = jsonDecode(response.body);

      emit(SuccessChangePasswordState(message: jsonResponse['message']));
    } else {
      dynamic jsonResponse = jsonDecode(response.body);
      emit(
          FailChangePasswordState(message: jsonResponse['message'].toString()));
    }
  }
}
