import 'package:budget_buddy_frontend/dto/user_account.dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/user_account_information.provider.g.dart';

@riverpod
class UserAccountInformation extends _$UserAccountInformation {
  @override
  UserAccount? build() => null;

  void update_info(UserAccount account_info) {
    state = account_info;
  }
}
