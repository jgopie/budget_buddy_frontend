import 'package:budget_buddy_frontend/constants.dart';
import 'package:budget_buddy_frontend/dto/account.dto.dart';
import 'package:budget_buddy_frontend/network_functions/base_options.dart';
import 'package:budget_buddy_frontend/providers/secure_storage.provider.dart';
import 'package:budget_buddy_frontend/providers/user_account_information.provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/accounts.provider.g.dart';

@riverpod
class Accounts extends _$Accounts {
  @override
  List<Account> build() {
    return [];
  }

  Future<void> fetchAccounts() async {
    FlutterSecureStorage secure_storage = ref.watch(secureStorageProvider);
    String? token = await secure_storage.read(key: jwt);
    String? stored_email = await secure_storage.read(key: email);
    String userId = ref.watch(userAccountInformationProvider)!.id;
    if (token == null || stored_email == null) {
      return Future.error('Token or Email is null');
    }
    Response response = await dio.get(
      '$accounts_endpoint/$userId',
      options: Options(
        headers: {"Authorization": "Bearer $token"},
      ),
    );
    if (response.statusCode == 200) {
      List<Account> accounts = [];
      for (var i = 0; i < response.data.length; i++) {
        accounts.add(
          Account.fromJson(response.data[i]),
        );
      }
      state = accounts;
    }
  }

  Future<void> addAccount(AddAccount new_account_info) async {
    FlutterSecureStorage secure_storage = ref.watch(secureStorageProvider);
    String? token = await secure_storage.read(key: jwt);
    String? stored_email = await secure_storage.read(key: email);
    if (token == null || stored_email == null) {
      return Future.error('Token or Email is null');
    }
    Response response = await dio.post(
      accounts_endpoint,
      data: new_account_info.toJson(),
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
    if (response.statusCode == 200) {
      return fetchAccounts();
    }
  }
}
