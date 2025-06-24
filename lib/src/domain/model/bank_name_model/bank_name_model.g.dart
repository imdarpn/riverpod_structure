// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankNameModelImpl _$$BankNameModelImplFromJson(Map<String, dynamic> json) =>
    _$BankNameModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$BankNameModelImplToJson(_$BankNameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
    };
