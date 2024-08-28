import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_hour_info_condition_data.dart';

part 'forecast_hour_info_data.dart';

@freezed
class ForecastHourInfoData with _$ForecastHourInfoData {
  factory ForecastHourInfoData({
    int? timeEpoch,
    String? time,
    double? tempC,
    double? tempF,
    int? isDay,
    ForecastHourInfoConditionData? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    double? snowCm,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? windchillC,
    double? windchillF,
    double? heatindexC,
    double? heatindexF,
    double? dewpointC,
    double? dewpointF,
    int? willItRain,
    int? chanceOfRain,
    int? willItSnow,
    int? chanceOfSnow,
    double? visKm,
    double? visMiles,
    double? gustMhp,
    double? gustKph,
    int? uv,
  }) = _ForecastHourInfoData;
}
