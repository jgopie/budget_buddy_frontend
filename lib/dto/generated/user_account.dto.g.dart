// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_account.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAccountImpl _$$UserAccountImplFromJson(Map<String, dynamic> json) =>
    _$UserAccountImpl(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      is_admin: json['is_admin'] as bool,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      token: json['token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$UserAccountImplToJson(_$UserAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'is_admin': instance.is_admin,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'token': instance.token,
      'refresh_token': instance.refresh_token,
    };

_$AddUserImpl _$$AddUserImplFromJson(Map<String, dynamic> json) =>
    _$AddUserImpl(
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AddUserImplToJson(_$AddUserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'password': instance.password,
    };

_$UserLoginImpl _$$UserLoginImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserLoginImplToJson(_$UserLoginImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
