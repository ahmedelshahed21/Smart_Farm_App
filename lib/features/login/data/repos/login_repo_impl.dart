import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_farm/Features/login/data/models/login_model.dart';
import 'package:smart_farm/Features/login/data/repos/login_repo.dart';
import 'package:smart_farm/constants.dart';


class LoginRepoImpl implements LoginRepo {
  @override
  Future<void> loginUser(String userName, String password) async {
    String url = '$kPlantsUrl/login';
    final Map<String, dynamic> data = LoginModel(userName: userName, password: password).toJson();
    final response = await http.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data)
    );

    if (response.statusCode == 200) {
      // handle success
    } else if (response.statusCode >= 401) {
      // handle failure
    } else {
      // handle other cases
    }
  }
}
