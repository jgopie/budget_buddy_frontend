// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../transaction.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      account_id: json['account_id'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'account_id': instance.account_id,
      'amount': instance.amount,
    };

_$TransactionCreatedImpl _$$TransactionCreatedImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionCreatedImpl(
      transaction_details: Transaction.fromJson(
          json['transaction_details'] as Map<String, dynamic>),
      account_details: json['account_details'] as String,
    );

Map<String, dynamic> _$$TransactionCreatedImplToJson(
        _$TransactionCreatedImpl instance) =>
    <String, dynamic>{
      'transaction_details': instance.transaction_details,
      'account_details': instance.account_details,
    };
