import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:dio/dio.dart';

Future<UserAccount> login(UserLogin login_info) async {
  Response response = await dio.post(login_endpoint,
      data: {'email': login_info.email, 'password': login_info.password});
  return UserAccount.fromJson(response.data);
}
