// import 'dart:convert';
//
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:smart_farm/Features/login/data/models/login_model.dart';
// import 'package:smart_farm/Features/login/data/repos/login_repo.dart';
// import 'package:smart_farm/core/errors/failure.dart';
// import 'package:smart_farm/core/utils/api_service.dart';
// import 'package:http/http.dart' as http;
//
// class LoginRepoImpl implements LoginRepo{
//
//   final ApiService apiService;
//   LoginRepoImpl(this.apiService);
//
//   @override
//   Future<Either<Failure, void>> login(String userName,String password)async{
//
//     try{
//       final url='cc';
//       final Map<String,dynamic> data=LoginModel(userName: userName, password: password).toJson();
//       final response = await http.post(Uri.parse(url),
//         headers: {
//
//         },
//         body: jsonEncode(data)
//       );
//       return right(response);
//
//
//
//     }catch(e){
//       if(e is DioException) {
//         return left(ServerFailure.fromDioException(e));
//       }
//       else{
//         return left(ServerFailure(errMessage: e.toString()));
//       }
//     }
//
//     throw UnimplementedError();
//   }
//
// }