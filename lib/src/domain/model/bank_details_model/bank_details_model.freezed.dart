// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankDetailsModel _$BankDetailsModelFromJson(Map<String, dynamic> json) {
  return _BankDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BankDetailsModel {
  @JsonKey(name: "bank_id")
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: "account_holder_name")
  String? get accountHolderName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "iban")
  String? get iban => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_name")
  String? get bankName => throw _privateConstructorUsedError;

  /// Serializes this BankDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankDetailsModelCopyWith<BankDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailsModelCopyWith<$Res> {
  factory $BankDetailsModelCopyWith(
          BankDetailsModel value, $Res Function(BankDetailsModel) then) =
      _$BankDetailsModelCopyWithImpl<$Res, BankDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "bank_id") int? bankId,
      @JsonKey(name: "account_holder_name") String? accountHolderName,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "iban") String? iban,
      @JsonKey(name: "bank_name") String? bankName});
}

/// @nodoc
class _$BankDetailsModelCopyWithImpl<$Res, $Val extends BankDetailsModel>
    implements $BankDetailsModelCopyWith<$Res> {
  _$BankDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = freezed,
    Object? accountHolderName = freezed,
    Object? accountNumber = freezed,
    Object? iban = freezed,
    Object? bankName = freezed,
  }) {
    return _then(_value.copyWith(
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      iban: freezed == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankDetailsModelImplCopyWith<$Res>
    implements $BankDetailsModelCopyWith<$Res> {
  factory _$$BankDetailsModelImplCopyWith(_$BankDetailsModelImpl value,
          $Res Function(_$BankDetailsModelImpl) then) =
      __$$BankDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bank_id") int? bankId,
      @JsonKey(name: "account_holder_name") String? accountHolderName,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "iban") String? iban,
      @JsonKey(name: "bank_name") String? bankName});
}

/// @nodoc
class __$$BankDetailsModelImplCopyWithImpl<$Res>
    extends _$BankDetailsModelCopyWithImpl<$Res, _$BankDetailsModelImpl>
    implements _$$BankDetailsModelImplCopyWith<$Res> {
  __$$BankDetailsModelImplCopyWithImpl(_$BankDetailsModelImpl _value,
      $Res Function(_$BankDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = freezed,
    Object? accountHolderName = freezed,
    Object? accountNumber = freezed,
    Object? iban = freezed,
    Object? bankName = freezed,
  }) {
    return _then(_$BankDetailsModelImpl(
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      iban: freezed == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankDetailsModelImpl implements _BankDetailsModel {
  const _$BankDetailsModelImpl(
      {@JsonKey(name: "bank_id") this.bankId,
      @JsonKey(name: "account_holder_name") this.accountHolderName,
      @JsonKey(name: "account_number") this.accountNumber,
      @JsonKey(name: "iban") this.iban,
      @JsonKey(name: "bank_name") this.bankName});

  factory _$BankDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "bank_id")
  final int? bankId;
  @override
  @JsonKey(name: "account_holder_name")
  final String? accountHolderName;
  @override
  @JsonKey(name: "account_number")
  final String? accountNumber;
  @override
  @JsonKey(name: "iban")
  final String? iban;
  @override
  @JsonKey(name: "bank_name")
  final String? bankName;

  @override
  String toString() {
    return 'BankDetailsModel(bankId: $bankId, accountHolderName: $accountHolderName, accountNumber: $accountNumber, iban: $iban, bankName: $bankName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankDetailsModelImpl &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.iban, iban) || other.iban == iban) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bankId, accountHolderName, accountNumber, iban, bankName);

  /// Create a copy of BankDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankDetailsModelImplCopyWith<_$BankDetailsModelImpl> get copyWith =>
      __$$BankDetailsModelImplCopyWithImpl<_$BankDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _BankDetailsModel implements BankDetailsModel {
  const factory _BankDetailsModel(
          {@JsonKey(name: "bank_id") final int? bankId,
          @JsonKey(name: "account_holder_name") final String? accountHolderName,
          @JsonKey(name: "account_number") final String? accountNumber,
          @JsonKey(name: "iban") final String? iban,
          @JsonKey(name: "bank_name") final String? bankName}) =
      _$BankDetailsModelImpl;

  factory _BankDetailsModel.fromJson(Map<String, dynamic> json) =
      _$BankDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "bank_id")
  int? get bankId;
  @override
  @JsonKey(name: "account_holder_name")
  String? get accountHolderName;
  @override
  @JsonKey(name: "account_number")
  String? get accountNumber;
  @override
  @JsonKey(name: "iban")
  String? get iban;
  @override
  @JsonKey(name: "bank_name")
  String? get bankName;

  /// Create a copy of BankDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankDetailsModelImplCopyWith<_$BankDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
