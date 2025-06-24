// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitModel _$InitModelFromJson(Map<String, dynamic> json) {
  return _InitModel.fromJson(json);
}

/// @nodoc
mixin _$InitModel {
  @JsonKey(name: "google_map_key")
  String? get googleMapKey => throw _privateConstructorUsedError;
  @JsonKey(name: "s3")
  S3Model? get s3 => throw _privateConstructorUsedError;

  /// Serializes this InitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitModelCopyWith<InitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitModelCopyWith<$Res> {
  factory $InitModelCopyWith(InitModel value, $Res Function(InitModel) then) =
      _$InitModelCopyWithImpl<$Res, InitModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "google_map_key") String? googleMapKey,
      @JsonKey(name: "s3") S3Model? s3});

  $S3ModelCopyWith<$Res>? get s3;
}

/// @nodoc
class _$InitModelCopyWithImpl<$Res, $Val extends InitModel>
    implements $InitModelCopyWith<$Res> {
  _$InitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleMapKey = freezed,
    Object? s3 = freezed,
  }) {
    return _then(_value.copyWith(
      googleMapKey: freezed == googleMapKey
          ? _value.googleMapKey
          : googleMapKey // ignore: cast_nullable_to_non_nullable
              as String?,
      s3: freezed == s3
          ? _value.s3
          : s3 // ignore: cast_nullable_to_non_nullable
              as S3Model?,
    ) as $Val);
  }

  /// Create a copy of InitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $S3ModelCopyWith<$Res>? get s3 {
    if (_value.s3 == null) {
      return null;
    }

    return $S3ModelCopyWith<$Res>(_value.s3!, (value) {
      return _then(_value.copyWith(s3: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitModelImplCopyWith<$Res>
    implements $InitModelCopyWith<$Res> {
  factory _$$InitModelImplCopyWith(
          _$InitModelImpl value, $Res Function(_$InitModelImpl) then) =
      __$$InitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "google_map_key") String? googleMapKey,
      @JsonKey(name: "s3") S3Model? s3});

  @override
  $S3ModelCopyWith<$Res>? get s3;
}

/// @nodoc
class __$$InitModelImplCopyWithImpl<$Res>
    extends _$InitModelCopyWithImpl<$Res, _$InitModelImpl>
    implements _$$InitModelImplCopyWith<$Res> {
  __$$InitModelImplCopyWithImpl(
      _$InitModelImpl _value, $Res Function(_$InitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleMapKey = freezed,
    Object? s3 = freezed,
  }) {
    return _then(_$InitModelImpl(
      googleMapKey: freezed == googleMapKey
          ? _value.googleMapKey
          : googleMapKey // ignore: cast_nullable_to_non_nullable
              as String?,
      s3: freezed == s3
          ? _value.s3
          : s3 // ignore: cast_nullable_to_non_nullable
              as S3Model?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitModelImpl implements _InitModel {
  const _$InitModelImpl(
      {@JsonKey(name: "google_map_key") required this.googleMapKey,
      @JsonKey(name: "s3") this.s3});

  factory _$InitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitModelImplFromJson(json);

  @override
  @JsonKey(name: "google_map_key")
  final String? googleMapKey;
  @override
  @JsonKey(name: "s3")
  final S3Model? s3;

  @override
  String toString() {
    return 'InitModel(googleMapKey: $googleMapKey, s3: $s3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitModelImpl &&
            (identical(other.googleMapKey, googleMapKey) ||
                other.googleMapKey == googleMapKey) &&
            (identical(other.s3, s3) || other.s3 == s3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, googleMapKey, s3);

  /// Create a copy of InitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitModelImplCopyWith<_$InitModelImpl> get copyWith =>
      __$$InitModelImplCopyWithImpl<_$InitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitModelImplToJson(
      this,
    );
  }
}

abstract class _InitModel implements InitModel {
  const factory _InitModel(
      {@JsonKey(name: "google_map_key") required final String? googleMapKey,
      @JsonKey(name: "s3") final S3Model? s3}) = _$InitModelImpl;

  factory _InitModel.fromJson(Map<String, dynamic> json) =
      _$InitModelImpl.fromJson;

  @override
  @JsonKey(name: "google_map_key")
  String? get googleMapKey;
  @override
  @JsonKey(name: "s3")
  S3Model? get s3;

  /// Create a copy of InitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitModelImplCopyWith<_$InitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

S3Model _$S3ModelFromJson(Map<String, dynamic> json) {
  return _S3Model.fromJson(json);
}

/// @nodoc
mixin _$S3Model {
  @JsonKey(name: "key")
  String? get accessKey => throw _privateConstructorUsedError;
  @JsonKey(name: "secret")
  String? get secretKey => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket")
  String? get bucketName => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this S3Model to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of S3Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $S3ModelCopyWith<S3Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3ModelCopyWith<$Res> {
  factory $S3ModelCopyWith(S3Model value, $Res Function(S3Model) then) =
      _$S3ModelCopyWithImpl<$Res, S3Model>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? accessKey,
      @JsonKey(name: "secret") String? secretKey,
      @JsonKey(name: "bucket") String? bucketName,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$S3ModelCopyWithImpl<$Res, $Val extends S3Model>
    implements $S3ModelCopyWith<$Res> {
  _$S3ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of S3Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessKey = freezed,
    Object? secretKey = freezed,
    Object? bucketName = freezed,
    Object? region = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      secretKey: freezed == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketName: freezed == bucketName
          ? _value.bucketName
          : bucketName // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$S3ModelImplCopyWith<$Res> implements $S3ModelCopyWith<$Res> {
  factory _$$S3ModelImplCopyWith(
          _$S3ModelImpl value, $Res Function(_$S3ModelImpl) then) =
      __$$S3ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? accessKey,
      @JsonKey(name: "secret") String? secretKey,
      @JsonKey(name: "bucket") String? bucketName,
      @JsonKey(name: "region") String? region,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$S3ModelImplCopyWithImpl<$Res>
    extends _$S3ModelCopyWithImpl<$Res, _$S3ModelImpl>
    implements _$$S3ModelImplCopyWith<$Res> {
  __$$S3ModelImplCopyWithImpl(
      _$S3ModelImpl _value, $Res Function(_$S3ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of S3Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessKey = freezed,
    Object? secretKey = freezed,
    Object? bucketName = freezed,
    Object? region = freezed,
    Object? url = freezed,
  }) {
    return _then(_$S3ModelImpl(
      accessKey: freezed == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      secretKey: freezed == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketName: freezed == bucketName
          ? _value.bucketName
          : bucketName // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$S3ModelImpl implements _S3Model {
  const _$S3ModelImpl(
      {@JsonKey(name: "key") required this.accessKey,
      @JsonKey(name: "secret") required this.secretKey,
      @JsonKey(name: "bucket") required this.bucketName,
      @JsonKey(name: "region") required this.region,
      @JsonKey(name: "url") required this.url});

  factory _$S3ModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$S3ModelImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? accessKey;
  @override
  @JsonKey(name: "secret")
  final String? secretKey;
  @override
  @JsonKey(name: "bucket")
  final String? bucketName;
  @override
  @JsonKey(name: "region")
  final String? region;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'S3Model(accessKey: $accessKey, secretKey: $secretKey, bucketName: $bucketName, region: $region, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$S3ModelImpl &&
            (identical(other.accessKey, accessKey) ||
                other.accessKey == accessKey) &&
            (identical(other.secretKey, secretKey) ||
                other.secretKey == secretKey) &&
            (identical(other.bucketName, bucketName) ||
                other.bucketName == bucketName) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessKey, secretKey, bucketName, region, url);

  /// Create a copy of S3Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$S3ModelImplCopyWith<_$S3ModelImpl> get copyWith =>
      __$$S3ModelImplCopyWithImpl<_$S3ModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$S3ModelImplToJson(
      this,
    );
  }
}

abstract class _S3Model implements S3Model {
  const factory _S3Model(
      {@JsonKey(name: "key") required final String? accessKey,
      @JsonKey(name: "secret") required final String? secretKey,
      @JsonKey(name: "bucket") required final String? bucketName,
      @JsonKey(name: "region") required final String? region,
      @JsonKey(name: "url") required final String? url}) = _$S3ModelImpl;

  factory _S3Model.fromJson(Map<String, dynamic> json) = _$S3ModelImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String? get accessKey;
  @override
  @JsonKey(name: "secret")
  String? get secretKey;
  @override
  @JsonKey(name: "bucket")
  String? get bucketName;
  @override
  @JsonKey(name: "region")
  String? get region;
  @override
  @JsonKey(name: "url")
  String? get url;

  /// Create a copy of S3Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$S3ModelImplCopyWith<_$S3ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
