// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForecastInfoData {
  ForecastLocationData? get location => throw _privateConstructorUsedError;
  ForecastCurrentData? get current => throw _privateConstructorUsedError;
  ForecastListData? get forecast => throw _privateConstructorUsedError;

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastInfoDataCopyWith<ForecastInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastInfoDataCopyWith<$Res> {
  factory $ForecastInfoDataCopyWith(
          ForecastInfoData value, $Res Function(ForecastInfoData) then) =
      _$ForecastInfoDataCopyWithImpl<$Res, ForecastInfoData>;
  @useResult
  $Res call(
      {ForecastLocationData? location,
      ForecastCurrentData? current,
      ForecastListData? forecast});

  $ForecastLocationDataCopyWith<$Res>? get location;
  $ForecastCurrentDataCopyWith<$Res>? get current;
  $ForecastListDataCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$ForecastInfoDataCopyWithImpl<$Res, $Val extends ForecastInfoData>
    implements $ForecastInfoDataCopyWith<$Res> {
  _$ForecastInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationData?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as ForecastCurrentData?,
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastListData?,
    ) as $Val);
  }

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastLocationDataCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ForecastLocationDataCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastCurrentDataCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $ForecastCurrentDataCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastListDataCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastListDataCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastInfoDataImplCopyWith<$Res>
    implements $ForecastInfoDataCopyWith<$Res> {
  factory _$$ForecastInfoDataImplCopyWith(_$ForecastInfoDataImpl value,
          $Res Function(_$ForecastInfoDataImpl) then) =
      __$$ForecastInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForecastLocationData? location,
      ForecastCurrentData? current,
      ForecastListData? forecast});

  @override
  $ForecastLocationDataCopyWith<$Res>? get location;
  @override
  $ForecastCurrentDataCopyWith<$Res>? get current;
  @override
  $ForecastListDataCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$ForecastInfoDataImplCopyWithImpl<$Res>
    extends _$ForecastInfoDataCopyWithImpl<$Res, _$ForecastInfoDataImpl>
    implements _$$ForecastInfoDataImplCopyWith<$Res> {
  __$$ForecastInfoDataImplCopyWithImpl(_$ForecastInfoDataImpl _value,
      $Res Function(_$ForecastInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_$ForecastInfoDataImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ForecastLocationData?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as ForecastCurrentData?,
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastListData?,
    ));
  }
}

/// @nodoc

class _$ForecastInfoDataImpl implements _ForecastInfoData {
  _$ForecastInfoDataImpl({this.location, this.current, this.forecast});

  @override
  final ForecastLocationData? location;
  @override
  final ForecastCurrentData? current;
  @override
  final ForecastListData? forecast;

  @override
  String toString() {
    return 'ForecastInfoData(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastInfoDataImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, current, forecast);

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastInfoDataImplCopyWith<_$ForecastInfoDataImpl> get copyWith =>
      __$$ForecastInfoDataImplCopyWithImpl<_$ForecastInfoDataImpl>(
          this, _$identity);
}

abstract class _ForecastInfoData implements ForecastInfoData {
  factory _ForecastInfoData(
      {final ForecastLocationData? location,
      final ForecastCurrentData? current,
      final ForecastListData? forecast}) = _$ForecastInfoDataImpl;

  @override
  ForecastLocationData? get location;
  @override
  ForecastCurrentData? get current;
  @override
  ForecastListData? get forecast;

  /// Create a copy of ForecastInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastInfoDataImplCopyWith<_$ForecastInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
