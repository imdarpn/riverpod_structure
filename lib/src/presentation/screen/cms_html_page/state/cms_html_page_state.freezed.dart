// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cms_html_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CmsHtmlPageState {
  String get pageContent => throw _privateConstructorUsedError;
  CmsHtmlPageArgs? get args => throw _privateConstructorUsedError;

  /// Create a copy of CmsHtmlPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CmsHtmlPageStateCopyWith<CmsHtmlPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CmsHtmlPageStateCopyWith<$Res> {
  factory $CmsHtmlPageStateCopyWith(
          CmsHtmlPageState value, $Res Function(CmsHtmlPageState) then) =
      _$CmsHtmlPageStateCopyWithImpl<$Res, CmsHtmlPageState>;
  @useResult
  $Res call({String pageContent, CmsHtmlPageArgs? args});
}

/// @nodoc
class _$CmsHtmlPageStateCopyWithImpl<$Res, $Val extends CmsHtmlPageState>
    implements $CmsHtmlPageStateCopyWith<$Res> {
  _$CmsHtmlPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CmsHtmlPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageContent = null,
    Object? args = freezed,
  }) {
    return _then(_value.copyWith(
      pageContent: null == pageContent
          ? _value.pageContent
          : pageContent // ignore: cast_nullable_to_non_nullable
              as String,
      args: freezed == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as CmsHtmlPageArgs?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CmsHtmlPageStateImplCopyWith<$Res>
    implements $CmsHtmlPageStateCopyWith<$Res> {
  factory _$$CmsHtmlPageStateImplCopyWith(_$CmsHtmlPageStateImpl value,
          $Res Function(_$CmsHtmlPageStateImpl) then) =
      __$$CmsHtmlPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pageContent, CmsHtmlPageArgs? args});
}

/// @nodoc
class __$$CmsHtmlPageStateImplCopyWithImpl<$Res>
    extends _$CmsHtmlPageStateCopyWithImpl<$Res, _$CmsHtmlPageStateImpl>
    implements _$$CmsHtmlPageStateImplCopyWith<$Res> {
  __$$CmsHtmlPageStateImplCopyWithImpl(_$CmsHtmlPageStateImpl _value,
      $Res Function(_$CmsHtmlPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CmsHtmlPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageContent = null,
    Object? args = freezed,
  }) {
    return _then(_$CmsHtmlPageStateImpl(
      pageContent: null == pageContent
          ? _value.pageContent
          : pageContent // ignore: cast_nullable_to_non_nullable
              as String,
      args: freezed == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as CmsHtmlPageArgs?,
    ));
  }
}

/// @nodoc

class _$CmsHtmlPageStateImpl implements _CmsHtmlPageState {
  _$CmsHtmlPageStateImpl({this.pageContent = '', this.args});

  @override
  @JsonKey()
  final String pageContent;
  @override
  final CmsHtmlPageArgs? args;

  @override
  String toString() {
    return 'CmsHtmlPageState(pageContent: $pageContent, args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CmsHtmlPageStateImpl &&
            (identical(other.pageContent, pageContent) ||
                other.pageContent == pageContent) &&
            (identical(other.args, args) || other.args == args));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageContent, args);

  /// Create a copy of CmsHtmlPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CmsHtmlPageStateImplCopyWith<_$CmsHtmlPageStateImpl> get copyWith =>
      __$$CmsHtmlPageStateImplCopyWithImpl<_$CmsHtmlPageStateImpl>(
          this, _$identity);
}

abstract class _CmsHtmlPageState implements CmsHtmlPageState {
  factory _CmsHtmlPageState(
      {final String pageContent,
      final CmsHtmlPageArgs? args}) = _$CmsHtmlPageStateImpl;

  @override
  String get pageContent;
  @override
  CmsHtmlPageArgs? get args;

  /// Create a copy of CmsHtmlPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CmsHtmlPageStateImplCopyWith<_$CmsHtmlPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
