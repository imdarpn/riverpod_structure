// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyOtpState {
  GlobalKey<FormState>? get formKey => throw _privateConstructorUsedError;
  TextEditingController? get otpController =>
      throw _privateConstructorUsedError;
  int? get countDownSeconds => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpStateCopyWith<VerifyOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpStateCopyWith<$Res> {
  factory $VerifyOtpStateCopyWith(
          VerifyOtpState value, $Res Function(VerifyOtpState) then) =
      _$VerifyOtpStateCopyWithImpl<$Res, VerifyOtpState>;
  @useResult
  $Res call(
      {GlobalKey<FormState>? formKey,
      TextEditingController? otpController,
      int? countDownSeconds});
}

/// @nodoc
class _$VerifyOtpStateCopyWithImpl<$Res, $Val extends VerifyOtpState>
    implements $VerifyOtpStateCopyWith<$Res> {
  _$VerifyOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = freezed,
    Object? otpController = freezed,
    Object? countDownSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
      otpController: freezed == otpController
          ? _value.otpController
          : otpController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      countDownSeconds: freezed == countDownSeconds
          ? _value.countDownSeconds
          : countDownSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpStateImplCopyWith<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  factory _$$VerifyOtpStateImplCopyWith(_$VerifyOtpStateImpl value,
          $Res Function(_$VerifyOtpStateImpl) then) =
      __$$VerifyOtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormState>? formKey,
      TextEditingController? otpController,
      int? countDownSeconds});
}

/// @nodoc
class __$$VerifyOtpStateImplCopyWithImpl<$Res>
    extends _$VerifyOtpStateCopyWithImpl<$Res, _$VerifyOtpStateImpl>
    implements _$$VerifyOtpStateImplCopyWith<$Res> {
  __$$VerifyOtpStateImplCopyWithImpl(
      _$VerifyOtpStateImpl _value, $Res Function(_$VerifyOtpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = freezed,
    Object? otpController = freezed,
    Object? countDownSeconds = freezed,
  }) {
    return _then(_$VerifyOtpStateImpl(
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
      otpController: freezed == otpController
          ? _value.otpController
          : otpController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      countDownSeconds: freezed == countDownSeconds
          ? _value.countDownSeconds
          : countDownSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$VerifyOtpStateImpl implements _VerifyOtpState {
  _$VerifyOtpStateImpl(
      {this.formKey = null,
      this.otpController = null,
      this.countDownSeconds = 30});

  @override
  @JsonKey()
  final GlobalKey<FormState>? formKey;
  @override
  @JsonKey()
  final TextEditingController? otpController;
  @override
  @JsonKey()
  final int? countDownSeconds;

  @override
  String toString() {
    return 'VerifyOtpState(formKey: $formKey, otpController: $otpController, countDownSeconds: $countDownSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.otpController, otpController) ||
                other.otpController == otpController) &&
            (identical(other.countDownSeconds, countDownSeconds) ||
                other.countDownSeconds == countDownSeconds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formKey, otpController, countDownSeconds);

  /// Create a copy of VerifyOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpStateImplCopyWith<_$VerifyOtpStateImpl> get copyWith =>
      __$$VerifyOtpStateImplCopyWithImpl<_$VerifyOtpStateImpl>(
          this, _$identity);
}

abstract class _VerifyOtpState implements VerifyOtpState {
  factory _VerifyOtpState(
      {final GlobalKey<FormState>? formKey,
      final TextEditingController? otpController,
      final int? countDownSeconds}) = _$VerifyOtpStateImpl;

  @override
  GlobalKey<FormState>? get formKey;
  @override
  TextEditingController? get otpController;
  @override
  int? get countDownSeconds;

  /// Create a copy of VerifyOtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpStateImplCopyWith<_$VerifyOtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
