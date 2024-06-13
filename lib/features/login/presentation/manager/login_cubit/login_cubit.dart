import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/features/login/presentation/manager/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(LoginInitialState());
  Future<void> loginUser()async {

    emit(LoginLoadingState());
    try{


      emit(LoginSuccess());
    }catch(e){
      emit(LoginFailure());
    }
  }
}