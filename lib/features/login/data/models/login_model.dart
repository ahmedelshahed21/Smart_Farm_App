class LoginModel {
  String userName, password;

  LoginModel({required this.userName, required this.password});

  // factory LoginModel.fromjson(jsonData) {
  //   return LoginModel(userName: jsonData['email'], password: jsonData['password']);
  // }


  Map<String,dynamic> toJson(){
    return {
      'email':userName,
      'password':password
    };
  }
}
