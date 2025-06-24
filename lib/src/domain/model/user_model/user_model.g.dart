// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelImplAdapter extends TypeAdapter<_$UserModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserModelImpl(
      id: fields[0] as int?,
      name: fields[1] as String?,
      countryCode: fields[2] as String?,
      phone: fields[3] as String?,
      profilePicture: fields[4] as String?,
      locale: fields[5] as String?,
      isVerified: fields[6] as bool?,
      accessToken: fields[7] as String?,
      isProfileComplete: fields[8] as bool?,
      bankDetailModel: fields[9] as BankDetailsModel?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserModelImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.countryCode)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.profilePicture)
      ..writeByte(5)
      ..write(obj.locale)
      ..writeByte(6)
      ..write(obj.isVerified)
      ..writeByte(7)
      ..write(obj.accessToken)
      ..writeByte(8)
      ..write(obj.isProfileComplete)
      ..writeByte(9)
      ..write(obj.bankDetailModel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      countryCode: json['country_code'] as String?,
      phone: json['phone'] as String?,
      profilePicture: json['profile_picture'] as String?,
      locale: json['locale'] as String?,
      isVerified: stringToBool(json['is_verified']),
      accessToken: json['access_token'] as String?,
      isProfileComplete: json['is_profile_complete'] as bool?,
      bankDetailModel: json['bank'] == null
          ? null
          : BankDetailsModel.fromJson(json['bank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_code': instance.countryCode,
      'phone': instance.phone,
      'profile_picture': instance.profilePicture,
      'locale': instance.locale,
      'is_verified': boolToInt(instance.isVerified),
      'access_token': instance.accessToken,
      'is_profile_complete': instance.isProfileComplete,
      'bank': instance.bankDetailModel,
    };
