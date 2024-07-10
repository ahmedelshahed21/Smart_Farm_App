class LoginModel {
  String userName, password;

  LoginModel({required this.userName, required this.password});

  Map<String,dynamic> toJson(){
    return {
      'email':userName,
      'password':password
    };
  }
}
