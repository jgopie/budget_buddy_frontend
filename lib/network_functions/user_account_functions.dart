import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:dio/dio.dart';

Future<UserAccount> login(UserLogin login_info) async {
  Response response = await dio.post(login_endpoint,
      data: {'email': login_info.email, 'password': login_info.password});
  if (response.statusCode == 200) {
    return UserAccount.fromJson(response.data);
  } else {
    return Future.error(
        'Request failed with status code ${response.statusCode}');
  }
}

Future<UserAccount> autoLogin(String web_token, String email) async {
  Response response = await dio.post(
    auto_endpoint,
    data: {'email': email},
    options: Options(
      headers: {"Authorization": "Bearer $web_token"},
    ),
  );
  return UserAccount.fromJson(response.data);
}
