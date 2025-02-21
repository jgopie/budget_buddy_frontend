// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../transaction.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  String get account_id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call({String id, DateTime created_at, String account_id, double amount});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? account_id = null,
    Object? amount = null,
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
      account_id: null == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime created_at, String account_id, double amount});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? account_id = null,
    Object? amount = null,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account_id: null == account_id
          ? _value.account_id
          : account_id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {required this.id,
      required this.created_at,
      required this.account_id,
      required this.amount});

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime created_at;
  @override
  final String account_id;
  @override
  final double amount;

  @override
  String toString() {
    return 'Transaction(id: $id, created_at: $created_at, account_id: $account_id, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.account_id, account_id) ||
                other.account_id == account_id) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created_at, account_id, amount);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final String id,
      required final DateTime created_at,
      required final String account_id,
      required final double amount}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get created_at;
  @override
  String get account_id;
  @override
  double get amount;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionCreated _$TransactionCreatedFromJson(Map<String, dynamic> json) {
  return _TransactionCreated.fromJson(json);
}

/// @nodoc
mixin _$TransactionCreated {
  Transaction get transaction_details => throw _privateConstructorUsedError;
  String get account_details => throw _privateConstructorUsedError;

  /// Serializes this TransactionCreated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCreatedCopyWith<TransactionCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCreatedCopyWith<$Res> {
  factory $TransactionCreatedCopyWith(
          TransactionCreated value, $Res Function(TransactionCreated) then) =
      _$TransactionCreatedCopyWithImpl<$Res, TransactionCreated>;
  @useResult
  $Res call({Transaction transaction_details, String account_details});

  $TransactionCopyWith<$Res> get transaction_details;
}

/// @nodoc
class _$TransactionCreatedCopyWithImpl<$Res, $Val extends TransactionCreated>
    implements $TransactionCreatedCopyWith<$Res> {
  _$TransactionCreatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction_details = null,
    Object? account_details = null,
  }) {
    return _then(_value.copyWith(
      transaction_details: null == transaction_details
          ? _value.transaction_details
          : transaction_details // ignore: cast_nullable_to_non_nullable
              as Transaction,
      account_details: null == account_details
          ? _value.account_details
          : account_details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TransactionCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction_details {
    return $TransactionCopyWith<$Res>(_value.transaction_details, (value) {
      return _then(_value.copyWith(transaction_details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionCreatedImplCopyWith<$Res>
    implements $TransactionCreatedCopyWith<$Res> {
  factory _$$TransactionCreatedImplCopyWith(_$TransactionCreatedImpl value,
          $Res Function(_$TransactionCreatedImpl) then) =
      __$$TransactionCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction_details, String account_details});

  @override
  $TransactionCopyWith<$Res> get transaction_details;
}

/// @nodoc
class __$$TransactionCreatedImplCopyWithImpl<$Res>
    extends _$TransactionCreatedCopyWithImpl<$Res, _$TransactionCreatedImpl>
    implements _$$TransactionCreatedImplCopyWith<$Res> {
  __$$TransactionCreatedImplCopyWithImpl(_$TransactionCreatedImpl _value,
      $Res Function(_$TransactionCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction_details = null,
    Object? account_details = null,
  }) {
    return _then(_$TransactionCreatedImpl(
      transaction_details: null == transaction_details
          ? _value.transaction_details
          : transaction_details // ignore: cast_nullable_to_non_nullable
              as Transaction,
      account_details: null == account_details
          ? _value.account_details
          : account_details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionCreatedImpl implements _TransactionCreated {
  const _$TransactionCreatedImpl(
      {required this.transaction_details, required this.account_details});

  factory _$TransactionCreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionCreatedImplFromJson(json);

  @override
  final Transaction transaction_details;
  @override
  final String account_details;

  @override
  String toString() {
    return 'TransactionCreated(transaction_details: $transaction_details, account_details: $account_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCreatedImpl &&
            (identical(other.transaction_details, transaction_details) ||
                other.transaction_details == transaction_details) &&
            (identical(other.account_details, account_details) ||
                other.account_details == account_details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transaction_details, account_details);

  /// Create a copy of TransactionCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCreatedImplCopyWith<_$TransactionCreatedImpl> get copyWith =>
      __$$TransactionCreatedImplCopyWithImpl<_$TransactionCreatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionCreatedImplToJson(
      this,
    );
  }
}

abstract class _TransactionCreated implements TransactionCreated {
  const factory _TransactionCreated(
      {required final Transaction transaction_details,
      required final String account_details}) = _$TransactionCreatedImpl;

  factory _TransactionCreated.fromJson(Map<String, dynamic> json) =
      _$TransactionCreatedImpl.fromJson;

  @override
  Transaction get transaction_details;
  @override
  String get account_details;

  /// Create a copy of TransactionCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCreatedImplCopyWith<_$TransactionCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
