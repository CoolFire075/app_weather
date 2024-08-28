// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_hour_info_condition_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForecastHourInfoConditionData {
  String? get text => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Create a copy of ForecastHourInfoConditionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastHourInfoConditionDataCopyWith<ForecastHourInfoConditionData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastHourInfoConditionDataCopyWith<$Res> {
  factory $ForecastHourInfoConditionDataCopyWith(
          ForecastHourInfoConditionData value,
          $Res Function(ForecastHourInfoConditionData) then) =
      _$ForecastHourInfoConditionDataCopyWithImpl<$Res,
          ForecastHourInfoConditionData>;
  @useResult
  $Res call({String? text, String? icon, int? code});
}

/// @nodoc
class _$ForecastHourInfoConditionDataCopyWithImpl<$Res,
        $Val extends ForecastHourInfoConditionData>
    implements $ForecastHourInfoConditionDataCopyWith<$Res> {
  _$ForecastHourInfoConditionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastHourInfoConditionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastHourInfoConditionDataImplCopyWith<$Res>
    implements $ForecastHourInfoConditionDataCopyWith<$Res> {
  factory _$$ForecastHourInfoConditionDataImplCopyWith(
          _$ForecastHourInfoConditionDataImpl value,
          $Res Function(_$ForecastHourInfoConditionDataImpl) then) =
      __$$ForecastHourInfoConditionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? icon, int? code});
}

/// @nodoc
class __$$ForecastHourInfoConditionDataImplCopyWithImpl<$Res>
    extends _$ForecastHourInfoConditionDataCopyWithImpl<$Res,
        _$ForecastHourInfoConditionDataImpl>
    implements _$$ForecastHourInfoConditionDataImplCopyWith<$Res> {
  __$$ForecastHourInfoConditionDataImplCopyWithImpl(
      _$ForecastHourInfoConditionDataImpl _value,
      $Res Function(_$ForecastHourInfoConditionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastHourInfoConditionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ForecastHourInfoConditionDataImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ForecastHourInfoConditionDataImpl
    implements _ForecastHourInfoConditionData {
  _$ForecastHourInfoConditionDataImpl({this.text, this.icon, this.code});

  @override
  final String? text;
  @override
  final String? icon;
  @override
  final int? code;

  @override
  String toString() {
    return 'ForecastHourInfoConditionData(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastHourInfoConditionDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  /// Create a copy of ForecastHourInfoConditionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastHourInfoConditionDataImplCopyWith<
          _$ForecastHourInfoConditionDataImpl>
      get copyWith => __$$ForecastHourInfoConditionDataImplCopyWithImpl<
          _$ForecastHourInfoConditionDataImpl>(this, _$identity);
}

abstract class _ForecastHourInfoConditionData
    implements ForecastHourInfoConditionData {
  factory _ForecastHourInfoConditionData(
      {final String? text,
      final String? icon,
      final int? code}) = _$ForecastHourInfoConditionDataImpl;

  @override
  String? get text;
  @override
  String? get icon;
  @override
  int? get code;

  /// Create a copy of ForecastHourInfoConditionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastHourInfoConditionDataImplCopyWith<
          _$ForecastHourInfoConditionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
