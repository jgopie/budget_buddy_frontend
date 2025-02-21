// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../account.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: json['id'] as String,
      account_name: json['account_name'] as String,
      current_balance: (json['current_balance'] as num).toDouble(),
      user_id: json['user_id'] as String,
      account_type: json['account_type'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_name': instance.account_name,
      'current_balance': instance.current_balance,
      'user_id': instance.user_id,
      'account_type': instance.account_type,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
    };
