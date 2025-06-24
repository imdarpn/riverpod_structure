// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "country_code")
  String? get countryCode => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "profile_picture")
  String? get profilePicture => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get locale => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
  bool? get isVerified => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "is_profile_complete")
  bool? get isProfileComplete => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "bank")
  BankDetailsModel? get bankDetailModel => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) @JsonKey(name: "country_code") String? countryCode,
      @HiveField(3) String? phone,
      @HiveField(4) @JsonKey(name: "profile_picture") String? profilePicture,
      @HiveField(5) String? locale,
      @HiveField(6)
      @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
      bool? isVerified,
      @HiveField(7) @JsonKey(name: "access_token") String? accessToken,
      @HiveField(8)
      @JsonKey(name: "is_profile_complete")
      bool? isProfileComplete,
      @HiveField(9) @JsonKey(name: "bank") BankDetailsModel? bankDetailModel});

  $BankDetailsModelCopyWith<$Res>? get bankDetailModel;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryCode = freezed,
    Object? phone = freezed,
    Object? profilePicture = freezed,
    Object? locale = freezed,
    Object? isVerified = freezed,
    Object? accessToken = freezed,
    Object? isProfileComplete = freezed,
    Object? bankDetailModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isProfileComplete: freezed == isProfileComplete
          ? _value.isProfileComplete
          : isProfileComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankDetailModel: freezed == bankDetailModel
          ? _value.bankDetailModel
          : bankDetailModel // ignore: cast_nullable_to_non_nullable
              as BankDetailsModel?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankDetailsModelCopyWith<$Res>? get bankDetailModel {
    if (_value.bankDetailModel == null) {
      return null;
    }

    return $BankDetailsModelCopyWith<$Res>(_value.bankDetailModel!, (value) {
      return _then(_value.copyWith(bankDetailModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) @JsonKey(name: "country_code") String? countryCode,
      @HiveField(3) String? phone,
      @HiveField(4) @JsonKey(name: "profile_picture") String? profilePicture,
      @HiveField(5) String? locale,
      @HiveField(6)
      @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
      bool? isVerified,
      @HiveField(7) @JsonKey(name: "access_token") String? accessToken,
      @HiveField(8)
      @JsonKey(name: "is_profile_complete")
      bool? isProfileComplete,
      @HiveField(9) @JsonKey(name: "bank") BankDetailsModel? bankDetailModel});

  @override
  $BankDetailsModelCopyWith<$Res>? get bankDetailModel;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryCode = freezed,
    Object? phone = freezed,
    Object? profilePicture = freezed,
    Object? locale = freezed,
    Object? isVerified = freezed,
    Object? accessToken = freezed,
    Object? isProfileComplete = freezed,
    Object? bankDetailModel = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isProfileComplete: freezed == isProfileComplete
          ? _value.isProfileComplete
          : isProfileComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankDetailModel: freezed == bankDetailModel
          ? _value.bankDetailModel
          : bankDetailModel // ignore: cast_nullable_to_non_nullable
              as BankDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) @JsonKey(name: "country_code") this.countryCode,
      @HiveField(3) this.phone,
      @HiveField(4) @JsonKey(name: "profile_picture") this.profilePicture,
      @HiveField(5) this.locale,
      @HiveField(6)
      @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
      this.isVerified,
      @HiveField(7) @JsonKey(name: "access_token") this.accessToken,
      @HiveField(8)
      @JsonKey(name: "is_profile_complete")
      this.isProfileComplete,
      @HiveField(9) @JsonKey(name: "bank") this.bankDetailModel});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  @JsonKey(name: "country_code")
  final String? countryCode;
  @override
  @HiveField(3)
  final String? phone;
  @override
  @HiveField(4)
  @JsonKey(name: "profile_picture")
  final String? profilePicture;
  @override
  @HiveField(5)
  final String? locale;
  @override
  @HiveField(6)
  @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
  final bool? isVerified;
  @override
  @HiveField(7)
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override
  @HiveField(8)
  @JsonKey(name: "is_profile_complete")
  final bool? isProfileComplete;
  @override
  @HiveField(9)
  @JsonKey(name: "bank")
  final BankDetailsModel? bankDetailModel;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, countryCode: $countryCode, phone: $phone, profilePicture: $profilePicture, locale: $locale, isVerified: $isVerified, accessToken: $accessToken, isProfileComplete: $isProfileComplete, bankDetailModel: $bankDetailModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.isProfileComplete, isProfileComplete) ||
                other.isProfileComplete == isProfileComplete) &&
            (identical(other.bankDetailModel, bankDetailModel) ||
                other.bankDetailModel == bankDetailModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      countryCode,
      phone,
      profilePicture,
      locale,
      isVerified,
      accessToken,
      isProfileComplete,
      bankDetailModel);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? name,
      @HiveField(2) @JsonKey(name: "country_code") final String? countryCode,
      @HiveField(3) final String? phone,
      @HiveField(4)
      @JsonKey(name: "profile_picture")
      final String? profilePicture,
      @HiveField(5) final String? locale,
      @HiveField(6)
      @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
      final bool? isVerified,
      @HiveField(7) @JsonKey(name: "access_token") final String? accessToken,
      @HiveField(8)
      @JsonKey(name: "is_profile_complete")
      final bool? isProfileComplete,
      @HiveField(9)
      @JsonKey(name: "bank")
      final BankDetailsModel? bankDetailModel}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  @JsonKey(name: "country_code")
  String? get countryCode;
  @override
  @HiveField(3)
  String? get phone;
  @override
  @HiveField(4)
  @JsonKey(name: "profile_picture")
  String? get profilePicture;
  @override
  @HiveField(5)
  String? get locale;
  @override
  @HiveField(6)
  @JsonKey(name: "is_verified", fromJson: stringToBool, toJson: boolToInt)
  bool? get isVerified;
  @override
  @HiveField(7)
  @JsonKey(name: "access_token")
  String? get accessToken;
  @override
  @HiveField(8)
  @JsonKey(name: "is_profile_complete")
  bool? get isProfileComplete;
  @override
  @HiveField(9)
  @JsonKey(name: "bank")
  BankDetailsModel? get bankDetailModel;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
