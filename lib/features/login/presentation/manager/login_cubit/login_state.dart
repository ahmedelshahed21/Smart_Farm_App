abstract class LoginState{
  const LoginState();
}
class LoginInitialState extends LoginState{}

class LoginLoadingState extends LoginState{}

class LoginSuccess extends LoginState{}

class LoginFailure extends LoginState{
  // String failureMessage;
  // LoginFailure({required this.failureMessage});
}