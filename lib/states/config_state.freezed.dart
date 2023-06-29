// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfigState {
  bool get isFirstTime => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigStateCopyWith<ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigStateCopyWith<$Res> {
  factory $ConfigStateCopyWith(
          ConfigState value, $Res Function(ConfigState) then) =
      _$ConfigStateCopyWithImpl<$Res, ConfigState>;
  @useResult
  $Res call(
      {bool isFirstTime, String language, ThemeMode themeMode, Color? color});
}

/// @nodoc
class _$ConfigStateCopyWithImpl<$Res, $Val extends ConfigState>
    implements $ConfigStateCopyWith<$Res> {
  _$ConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
    Object? language = null,
    Object? themeMode = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigStateCopyWith<$Res>
    implements $ConfigStateCopyWith<$Res> {
  factory _$$_ConfigStateCopyWith(
          _$_ConfigState value, $Res Function(_$_ConfigState) then) =
      __$$_ConfigStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFirstTime, String language, ThemeMode themeMode, Color? color});
}

/// @nodoc
class __$$_ConfigStateCopyWithImpl<$Res>
    extends _$ConfigStateCopyWithImpl<$Res, _$_ConfigState>
    implements _$$_ConfigStateCopyWith<$Res> {
  __$$_ConfigStateCopyWithImpl(
      _$_ConfigState _value, $Res Function(_$_ConfigState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
    Object? language = null,
    Object? themeMode = null,
    Object? color = freezed,
  }) {
    return _then(_$_ConfigState(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_ConfigState extends _ConfigState {
  const _$_ConfigState(
      {required this.isFirstTime,
      required this.language,
      required this.themeMode,
      required this.color})
      : super._();

  @override
  final bool isFirstTime;
  @override
  final String language;
  @override
  final ThemeMode themeMode;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ConfigState(isFirstTime: $isFirstTime, language: $language, themeMode: $themeMode, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigState &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFirstTime, language, themeMode, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigStateCopyWith<_$_ConfigState> get copyWith =>
      __$$_ConfigStateCopyWithImpl<_$_ConfigState>(this, _$identity);
}

abstract class _ConfigState extends ConfigState {
  const factory _ConfigState(
      {required final bool isFirstTime,
      required final String language,
      required final ThemeMode themeMode,
      required final Color? color}) = _$_ConfigState;
  const _ConfigState._() : super._();

  @override
  bool get isFirstTime;
  @override
  String get language;
  @override
  ThemeMode get themeMode;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigStateCopyWith<_$_ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}