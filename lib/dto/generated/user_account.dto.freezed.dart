// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_account.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) {
  return _UserAccount.fromJson(json);
}

/// @nodoc
mixin _$UserAccount {
  String get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  bool get is_admin => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  /// Serializes this UserAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAccountCopyWith<UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res, UserAccount>;
  @useResult
  $Res call(
      {String id,
      DateTime created_at,
      DateTime updated_at,
      bool is_admin,
      String first_name,
      String last_name,
      String token,
      String refresh_token});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res, $Val extends UserAccount>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? is_admin = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? token = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      is_admin: null == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccountImplCopyWith<$Res>
    implements $UserAccountCopyWith<$Res> {
  factory _$$UserAccountImplCopyWith(
          _$UserAccountImpl value, $Res Function(_$UserAccountImpl) then) =
      __$$UserAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime created_at,
      DateTime updated_at,
      bool is_admin,
      String first_name,
      String last_name,
      String token,
      String refresh_token});
}

/// @nodoc
class __$$UserAccountImplCopyWithImpl<$Res>
    extends _$UserAccountCopyWithImpl<$Res, _$UserAccountImpl>
    implements _$$UserAccountImplCopyWith<$Res> {
  __$$UserAccountImplCopyWithImpl(
      _$UserAccountImpl _value, $Res Function(_$UserAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? is_admin = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? token = null,
    Object? refresh_token = null,
  }) {
    return _then(_$UserAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      is_admin: null == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccountImpl implements _UserAccount {
  const _$UserAccountImpl(
      {required this.id,
      required this.created_at,
      required this.updated_at,
      required this.is_admin,
      required this.first_name,
      required this.last_name,
      required this.token,
      required this.refresh_token});

  factory _$UserAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccountImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final bool is_admin;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String token;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'UserAccount(id: $id, created_at: $created_at, updated_at: $updated_at, is_admin: $is_admin, first_name: $first_name, last_name: $last_name, token: $token, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.is_admin, is_admin) ||
                other.is_admin == is_admin) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created_at, updated_at,
      is_admin, first_name, last_name, token, refresh_token);

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccountImplCopyWith<_$UserAccountImpl> get copyWith =>
      __$$UserAccountImplCopyWithImpl<_$UserAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccountImplToJson(
      this,
    );
  }
}

abstract class _UserAccount implements UserAccount {
  const factory _UserAccount(
      {required final String id,
      required final DateTime created_at,
      required final DateTime updated_at,
      required final bool is_admin,
      required final String first_name,
      required final String last_name,
      required final String token,
      required final String refresh_token}) = _$UserAccountImpl;

  factory _UserAccount.fromJson(Map<String, dynamic> json) =
      _$UserAccountImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  bool get is_admin;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get token;
  @override
  String get refresh_token;

  /// Create a copy of UserAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAccountImplCopyWith<_$UserAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddUser _$AddUserFromJson(Map<String, dynamic> json) {
  return _AddUser.fromJson(json);
}

/// @nodoc
mixin _$AddUser {
  String get email => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this AddUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddUserCopyWith<AddUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserCopyWith<$Res> {
  factory $AddUserCopyWith(AddUser value, $Res Function(AddUser) then) =
      _$AddUserCopyWithImpl<$Res, AddUser>;
  @useResult
  $Res call(
      {String email, String first_name, String last_name, String password});
}

/// @nodoc
class _$AddUserCopyWithImpl<$Res, $Val extends AddUser>
    implements $AddUserCopyWith<$Res> {
  _$AddUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res> implements $AddUserCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email, String first_name, String last_name, String password});
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$AddUserCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? password = null,
  }) {
    return _then(_$AddUserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddUserImpl implements _AddUser {
  const _$AddUserImpl(
      {required this.email,
      required this.first_name,
      required this.last_name,
      required this.password});

  factory _$AddUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddUserImplFromJson(json);

  @override
  final String email;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String password;

  @override
  String toString() {
    return 'AddUser(email: $email, first_name: $first_name, last_name: $last_name, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, first_name, last_name, password);

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddUserImplToJson(
      this,
    );
  }
}

abstract class _AddUser implements AddUser {
  const factory _AddUser(
      {required final String email,
      required final String first_name,
      required final String last_name,
      required final String password}) = _$AddUserImpl;

  factory _AddUser.fromJson(Map<String, dynamic> json) = _$AddUserImpl.fromJson;

  @override
  String get email;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get password;

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) {
  return _UserLogin.fromJson(json);
}

/// @nodoc
mixin _$UserLogin {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UserLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginCopyWith<UserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginCopyWith<$Res> {
  factory $UserLoginCopyWith(UserLogin value, $Res Function(UserLogin) then) =
      _$UserLoginCopyWithImpl<$Res, UserLogin>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoginCopyWithImpl<$Res, $Val extends UserLogin>
    implements $UserLoginCopyWith<$Res> {
  _$UserLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginImplCopyWith<$Res>
    implements $UserLoginCopyWith<$Res> {
  factory _$$UserLoginImplCopyWith(
          _$UserLoginImpl value, $Res Function(_$UserLoginImpl) then) =
      __$$UserLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginImplCopyWithImpl<$Res>
    extends _$UserLoginCopyWithImpl<$Res, _$UserLoginImpl>
    implements _$$UserLoginImplCopyWith<$Res> {
  __$$UserLoginImplCopyWithImpl(
      _$UserLoginImpl _value, $Res Function(_$UserLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginImpl implements _UserLogin {
  const _$UserLoginImpl({required this.email, required this.password});

  factory _$UserLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      __$$UserLoginImplCopyWithImpl<_$UserLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginImplToJson(
      this,
    );
  }
}

abstract class _UserLogin implements UserLogin {
  const factory _UserLogin(
      {required final String email,
      required final String password}) = _$UserLoginImpl;

  factory _UserLogin.fromJson(Map<String, dynamic> json) =
      _$UserLoginImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of UserLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginImplCopyWith<_$UserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
