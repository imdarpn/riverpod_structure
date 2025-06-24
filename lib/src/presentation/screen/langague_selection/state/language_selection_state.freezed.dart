// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageSelectionState {
  LanguageCode? get selectedLocale => throw _privateConstructorUsedError;

  /// Create a copy of LanguageSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageSelectionStateCopyWith<LanguageSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageSelectionStateCopyWith<$Res> {
  factory $LanguageSelectionStateCopyWith(LanguageSelectionState value,
          $Res Function(LanguageSelectionState) then) =
      _$LanguageSelectionStateCopyWithImpl<$Res, LanguageSelectionState>;
  @useResult
  $Res call({LanguageCode? selectedLocale});
}

/// @nodoc
class _$LanguageSelectionStateCopyWithImpl<$Res,
        $Val extends LanguageSelectionState>
    implements $LanguageSelectionStateCopyWith<$Res> {
  _$LanguageSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocale = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLocale: freezed == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as LanguageCode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageSelectionStateImplCopyWith<$Res>
    implements $LanguageSelectionStateCopyWith<$Res> {
  factory _$$LanguageSelectionStateImplCopyWith(
          _$LanguageSelectionStateImpl value,
          $Res Function(_$LanguageSelectionStateImpl) then) =
      __$$LanguageSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageCode? selectedLocale});
}

/// @nodoc
class __$$LanguageSelectionStateImplCopyWithImpl<$Res>
    extends _$LanguageSelectionStateCopyWithImpl<$Res,
        _$LanguageSelectionStateImpl>
    implements _$$LanguageSelectionStateImplCopyWith<$Res> {
  __$$LanguageSelectionStateImplCopyWithImpl(
      _$LanguageSelectionStateImpl _value,
      $Res Function(_$LanguageSelectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocale = freezed,
  }) {
    return _then(_$LanguageSelectionStateImpl(
      selectedLocale: freezed == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as LanguageCode?,
    ));
  }
}

/// @nodoc

class _$LanguageSelectionStateImpl implements _LanguageSelectionState {
  _$LanguageSelectionStateImpl({this.selectedLocale = null});

  @override
  @JsonKey()
  final LanguageCode? selectedLocale;

  @override
  String toString() {
    return 'LanguageSelectionState(selectedLocale: $selectedLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageSelectionStateImpl &&
            (identical(other.selectedLocale, selectedLocale) ||
                other.selectedLocale == selectedLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocale);

  /// Create a copy of LanguageSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageSelectionStateImplCopyWith<_$LanguageSelectionStateImpl>
      get copyWith => __$$LanguageSelectionStateImplCopyWithImpl<
          _$LanguageSelectionStateImpl>(this, _$identity);
}

abstract class _LanguageSelectionState implements LanguageSelectionState {
  factory _LanguageSelectionState({final LanguageCode? selectedLocale}) =
      _$LanguageSelectionStateImpl;

  @override
  LanguageCode? get selectedLocale;

  /// Create a copy of LanguageSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageSelectionStateImplCopyWith<_$LanguageSelectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
