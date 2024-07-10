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
    final Map<String, dynamic> data = LoginModel(userName: userName, password: password).toJson();
    final response = await http.post(Uri.parse('$kPlantsUrl/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data)
    );

    if(response.statusCode==200){
      emit(LoginSuccess());
    }
    else if(response.statusCode>=401){
      emit(LoginFailure());
    }
    else{
      emit(LoginLoadingState());
    }
  }
}



// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smart_farm/Features/login/data/repos/login_repo.dart';
// import 'package:smart_farm/Features/login/presentation/manager/login_cubit/login_state.dart';
//
//
// class LoginCubit extends Cubit<LoginState> {
//   final LoginRepo loginRepo;
//
//   LoginCubit(this.loginRepo) : super(LoginInitialState());
//
//   Future<void> loginUser(String userName, String password) async {
//     emit(LoginLoadingState());
//     try {
//       await loginRepo.loginUser(userName, password);
//       emit(LoginSuccess());
//     } catch (e) {
//       emit(LoginFailure());
//     }
//   }
// }
