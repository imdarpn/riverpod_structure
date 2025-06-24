// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankNameModel _$BankNameModelFromJson(Map<String, dynamic> json) {
  return _BankNameModel.fromJson(json);
}

/// @nodoc
mixin _$BankNameModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;

  /// Serializes this BankNameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankNameModelCopyWith<BankNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankNameModelCopyWith<$Res> {
  factory $BankNameModelCopyWith(
          BankNameModel value, $Res Function(BankNameModel) then) =
      _$BankNameModelCopyWithImpl<$Res, BankNameModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "country") String country});
}

/// @nodoc
class _$BankNameModelCopyWithImpl<$Res, $Val extends BankNameModel>
    implements $BankNameModelCopyWith<$Res> {
  _$BankNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankNameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankNameModelImplCopyWith<$Res>
    implements $BankNameModelCopyWith<$Res> {
  factory _$$BankNameModelImplCopyWith(
          _$BankNameModelImpl value, $Res Function(_$BankNameModelImpl) then) =
      __$$BankNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "country") String country});
}

/// @nodoc
class __$$BankNameModelImplCopyWithImpl<$Res>
    extends _$BankNameModelCopyWithImpl<$Res, _$BankNameModelImpl>
    implements _$$BankNameModelImplCopyWith<$Res> {
  __$$BankNameModelImplCopyWithImpl(
      _$BankNameModelImpl _value, $Res Function(_$BankNameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankNameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_$BankNameModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankNameModelImpl implements _BankNameModel {
  const _$BankNameModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "country") required this.country});

  factory _$BankNameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankNameModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "country")
  final String country;

  @override
  String toString() {
    return 'BankNameModel(id: $id, name: $name, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankNameModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country);

  /// Create a copy of BankNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankNameModelImplCopyWith<_$BankNameModelImpl> get copyWith =>
      __$$BankNameModelImplCopyWithImpl<_$BankNameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankNameModelImplToJson(
      this,
    );
  }
}

abstract class _BankNameModel implements BankNameModel {
  const factory _BankNameModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "country") required final String country}) =
      _$BankNameModelImpl;

  factory _BankNameModel.fromJson(Map<String, dynamic> json) =
      _$BankNameModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "country")
  String get country;

  /// Create a copy of BankNameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankNameModelImplCopyWith<_$BankNameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
