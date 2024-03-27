import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visiter_app/Dashboard/blocs/EnquiryBloc/EnquiryEvent.dart';
import 'package:visiter_app/Dashboard/blocs/EnquiryBloc/EnquiryState.dart';
import 'package:visiter_app/config/Apiurls.dart';
import 'package:http/http.dart' as http;

class EnquiryBloc extends Bloc<EnquiryEvent, EnquiryState> {
  EnquiryBloc() : super(InitialEnquiryState()) {
    on<ButtonClickEnquiryEvent>(buttonClickEnquiryEvent);
  }

  buttonClickEnquiryEvent(ButtonClickEnquiryEvent event, Emitter emit) async {
    emit(LoadingEnquiryState());

    String? name = event.name;
    String? email = event.email;
    String? mobile = event.mobile;
    String? message = event.message;
    String? address = event.address;
    String? refBy = event.refBy;
    String? product = event.product;
    String? members = event.members;
    String? dof = event.dof;
    String? att = event.att;
    String? addedBy = event.addedBy;
    var request = http.MultipartRequest('POST', Uri.parse(Apiurls.CONTACT_US));

    // request fileds
    request.fields["key"] = Apiurls.KEY;
    request.fields["name"] = name.toString();
    request.fields["email"] = email.toString();
    request.fields["mobile"] = mobile.toString();
    request.fields["message"] = message.toString();
    request.fields["address"] = address.toString();
    request.fields["ref_by"] = refBy.toString();
    request.fields["product"] = product.toString();
    request.fields["members"] = members.toString();
    request.fields["dof"] = dof.toString();
    request.fields["att"] = att.toString();
    request.fields["AddedBy"] = addedBy.toString();

    var response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201) {
      dynamic resp = await http.Response.fromStream(response);
      dynamic result = jsonDecode(resp.body);
      emit(SuccessEnquiryState(message: result['msg']));
    } else {
      dynamic resp = await http.Response.fromStream(response);
      dynamic result = jsonDecode(resp.body);
      emit(FailEnquiryState(message: result['msg']));
    }
  }
}
