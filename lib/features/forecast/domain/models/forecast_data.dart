import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecastday_data.dart';

part 'forecast_data.freezed.dart';

@freezed
class ForecastData with _$ForecastData {
  factory ForecastData({
    ForecastdayData? forecast,
  }) = _ForecastData;
}
