// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../account.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get id => throw _privateConstructorUsedError;
  String get account_name => throw _privateConstructorUsedError;
  double get current_balance => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get account_type => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      String account_name,
      double current_balance,
      String user_id,
      String account_type,
      DateTime created_at,
      DateTime updated_at});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? account_name = null,
    Object? current_balance = null,
    Object? user_id = null,
    Object? account_type = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      account_name: null == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String,
      current_balance: null == current_balance
          ? _value.current_balance
          : current_balance // ignore: cast_nullable_to_non_nullable
              as double,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      account_type: null == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String account_name,
      double current_balance,
      String user_id,
      String account_type,
      DateTime created_at,
      DateTime updated_at});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? account_name = null,
    Object? current_balance = null,
    Object? user_id = null,
    Object? account_type = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      account_name: null == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String,
      current_balance: null == current_balance
          ? _value.current_balance
          : current_balance // ignore: cast_nullable_to_non_nullable
              as double,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      account_type: null == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id,
      required this.account_name,
      required this.current_balance,
      required this.user_id,
      required this.account_type,
      required this.created_at,
      required this.updated_at});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final String id;
  @override
  final String account_name;
  @override
  final double current_balance;
  @override
  final String user_id;
  @override
  final String account_type;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;

  @override
  String toString() {
    return 'Account(id: $id, account_name: $account_name, current_balance: $current_balance, user_id: $user_id, account_type: $account_type, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.account_name, account_name) ||
                other.account_name == account_name) &&
            (identical(other.current_balance, current_balance) ||
                other.current_balance == current_balance) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.account_type, account_type) ||
                other.account_type == account_type) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, account_name,
      current_balance, user_id, account_type, created_at, updated_at);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String id,
      required final String account_name,
      required final double current_balance,
      required final String user_id,
      required final String account_type,
      required final DateTime created_at,
      required final DateTime updated_at}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String get id;
  @override
  String get account_name;
  @override
  double get current_balance;
  @override
  String get user_id;
  @override
  String get account_type;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddAccount _$AddAccountFromJson(Map<String, dynamic> json) {
  return _AddAccount.fromJson(json);
}

/// @nodoc
mixin _$AddAccount {
  String get account_name => throw _privateConstructorUsedError;
  double get current_balance => throw _privateConstructorUsedError;
  String get account_type => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;

  /// Serializes this AddAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAccountCopyWith<AddAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountCopyWith<$Res> {
  factory $AddAccountCopyWith(
          AddAccount value, $Res Function(AddAccount) then) =
      _$AddAccountCopyWithImpl<$Res, AddAccount>;
  @useResult
  $Res call(
      {String account_name,
      double current_balance,
      String account_type,
      String user_id});
}

/// @nodoc
class _$AddAccountCopyWithImpl<$Res, $Val extends AddAccount>
    implements $AddAccountCopyWith<$Res> {
  _$AddAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account_name = null,
    Object? current_balance = null,
    Object? account_type = null,
    Object? user_id = null,
  }) {
    return _then(_value.copyWith(
      account_name: null == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String,
      current_balance: null == current_balance
          ? _value.current_balance
          : current_balance // ignore: cast_nullable_to_non_nullable
              as double,
      account_type: null == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAccountImplCopyWith<$Res>
    implements $AddAccountCopyWith<$Res> {
  factory _$$AddAccountImplCopyWith(
          _$AddAccountImpl value, $Res Function(_$AddAccountImpl) then) =
      __$$AddAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String account_name,
      double current_balance,
      String account_type,
      String user_id});
}

/// @nodoc
class __$$AddAccountImplCopyWithImpl<$Res>
    extends _$AddAccountCopyWithImpl<$Res, _$AddAccountImpl>
    implements _$$AddAccountImplCopyWith<$Res> {
  __$$AddAccountImplCopyWithImpl(
      _$AddAccountImpl _value, $Res Function(_$AddAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account_name = null,
    Object? current_balance = null,
    Object? account_type = null,
    Object? user_id = null,
  }) {
    return _then(_$AddAccountImpl(
      account_name: null == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String,
      current_balance: null == current_balance
          ? _value.current_balance
          : current_balance // ignore: cast_nullable_to_non_nullable
              as double,
      account_type: null == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAccountImpl implements _AddAccount {
  const _$AddAccountImpl(
      {required this.account_name,
      required this.current_balance,
      required this.account_type,
      required this.user_id});

  factory _$AddAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAccountImplFromJson(json);

  @override
  final String account_name;
  @override
  final double current_balance;
  @override
  final String account_type;
  @override
  final String user_id;

  @override
  String toString() {
    return 'AddAccount(account_name: $account_name, current_balance: $current_balance, account_type: $account_type, user_id: $user_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAccountImpl &&
            (identical(other.account_name, account_name) ||
                other.account_name == account_name) &&
            (identical(other.current_balance, current_balance) ||
                other.current_balance == current_balance) &&
            (identical(other.account_type, account_type) ||
                other.account_type == account_type) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, account_name, current_balance, account_type, user_id);

  /// Create a copy of AddAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAccountImplCopyWith<_$AddAccountImpl> get copyWith =>
      __$$AddAccountImplCopyWithImpl<_$AddAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAccountImplToJson(
      this,
    );
  }
}

abstract class _AddAccount implements AddAccount {
  const factory _AddAccount(
      {required final String account_name,
      required final double current_balance,
      required final String account_type,
      required final String user_id}) = _$AddAccountImpl;

  factory _AddAccount.fromJson(Map<String, dynamic> json) =
      _$AddAccountImpl.fromJson;

  @override
  String get account_name;
  @override
  double get current_balance;
  @override
  String get account_type;
  @override
  String get user_id;

  /// Create a copy of AddAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAccountImplCopyWith<_$AddAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
