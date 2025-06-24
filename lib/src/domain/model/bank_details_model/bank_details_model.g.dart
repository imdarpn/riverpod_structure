// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankDetailsModelImpl _$$BankDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankDetailsModelImpl(
      bankId: (json['bank_id'] as num?)?.toInt(),
      accountHolderName: json['account_holder_name'] as String?,
      accountNumber: json['account_number'] as String?,
      iban: json['iban'] as String?,
      bankName: json['bank_name'] as String?,
    );

Map<String, dynamic> _$$BankDetailsModelImplToJson(
        _$BankDetailsModelImpl instance) =>
    <String, dynamic>{
      'bank_id': instance.bankId,
      'account_holder_name': instance.accountHolderName,
      'account_number': instance.accountNumber,
      'iban': instance.iban,
      'bank_name': instance.bankName,
    };
