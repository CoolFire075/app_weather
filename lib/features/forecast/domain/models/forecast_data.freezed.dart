// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForecastData {
  ForecastdayData? get forecast => throw _privateConstructorUsedError;

  /// Create a copy of ForecastData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastDataCopyWith<ForecastData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDataCopyWith<$Res> {
  factory $ForecastDataCopyWith(
          ForecastData value, $Res Function(ForecastData) then) =
      _$ForecastDataCopyWithImpl<$Res, ForecastData>;
  @useResult
  $Res call({ForecastdayData? forecast});

  $ForecastdayDataCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$ForecastDataCopyWithImpl<$Res, $Val extends ForecastData>
    implements $ForecastDataCopyWith<$Res> {
  _$ForecastDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastdayData?,
    ) as $Val);
  }

  /// Create a copy of ForecastData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastdayDataCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastdayDataCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDataImplCopyWith<$Res>
    implements $ForecastDataCopyWith<$Res> {
  factory _$$ForecastDataImplCopyWith(
          _$ForecastDataImpl value, $Res Function(_$ForecastDataImpl) then) =
      __$$ForecastDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastdayData? forecast});

  @override
  $ForecastdayDataCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$ForecastDataImplCopyWithImpl<$Res>
    extends _$ForecastDataCopyWithImpl<$Res, _$ForecastDataImpl>
    implements _$$ForecastDataImplCopyWith<$Res> {
  __$$ForecastDataImplCopyWithImpl(
      _$ForecastDataImpl _value, $Res Function(_$ForecastDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(_$ForecastDataImpl(
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastdayData?,
    ));
  }
}

/// @nodoc

class _$ForecastDataImpl implements _ForecastData {
  _$ForecastDataImpl({this.forecast});

  @override
  final ForecastdayData? forecast;

  @override
  String toString() {
    return 'ForecastData(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDataImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  /// Create a copy of ForecastData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDataImplCopyWith<_$ForecastDataImpl> get copyWith =>
      __$$ForecastDataImplCopyWithImpl<_$ForecastDataImpl>(this, _$identity);
}

abstract class _ForecastData implements ForecastData {
  factory _ForecastData({final ForecastdayData? forecast}) = _$ForecastDataImpl;

  @override
  ForecastdayData? get forecast;

  /// Create a copy of ForecastData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastDataImplCopyWith<_$ForecastDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
