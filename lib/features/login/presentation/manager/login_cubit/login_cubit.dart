import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/Features/login/data/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:smart_farm/Features/login/presentation/manager/login_cubit/login_state.dart';
import 'package:smart_farm/constants.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(LoginInitialState());
  Future<void> loginUser(String userName,password)async{
    emit(LoginLoadingState());
    String url = '$kMustafaUrl/login';
    final Map<String, dynamic> data = LoginModel(userName: userName, password: password).toJson();
    final response = await http.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data)
    );

    if(response.statusCode==200){
      emit(LoginSuccess());
      // print('success state');
      // print(response.body.toString());
    }
    else if(response.statusCode>=401){
      emit(LoginFailure());
      // print('failed state');
      // print(response.body.toString());
      // print(response.statusCode.toString());
    }
    else{
      emit(LoginLoadingState());
    }
  }
}