import 'package:app_weather/features/forecast/domain/models/forecast_astro_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_day_data.dart';
import 'forecast_hour_info_data.dart';

part 'forecast_day_info_data.freezed.dart';

@freezed
class ForecastDayInfoData with _$ForecastDayInfoData {
  factory ForecastDayInfoData({
    String? date,
    int? dateEpoch,
    ForecastDayData? day,
    ForecastAstroData? astro,
    List<ForecastHourInfoData?> hour,
  }) = _ForecastDayInfoData;
}
