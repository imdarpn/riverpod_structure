import 'package:riverpod_structure/src/domain/model/bank_details_model/bank_details_model.dart';
import 'package:riverpod_structure/src/domain/model/bank_name_model/bank_name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user_model.g.dart';

part 'user_model.freezed.dart';

bool? stringToBool(dynamic value) {
  if (value == null) return null;
  return value.toString() == '1';
}

int? boolToInt(bool? value) {
  if (value == null) return null;
  return value ? 1 : 0;
}

@freezed
class UserModel with _$UserModel {
  @HiveType(typeId: 0)
  const factory UserModel({
    @HiveField(0) int? id,

    @HiveField(1) String? name,

    @HiveField(2) @JsonKey(name: "country_code") String? countryCode,

    @HiveField(3) String? phone,

    @HiveField(4) @JsonKey(name: "profile_picture") String? profilePicture,

    @HiveField(5) String? locale,

    @HiveField(6)
    @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
    bool? isVerified,

    @HiveField(7) @JsonKey(name: "access_token") String? accessToken,

    @HiveField(8) @JsonKey(name: "is_profile_complete") bool? isProfileComplete,

    @HiveField(9) @JsonKey(name: "bank") BankDetailsModel? bankDetailModel,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
