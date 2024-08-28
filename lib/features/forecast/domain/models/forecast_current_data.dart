import 'package:app_weather/features/forecast/domain/models/forecast_condition_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_current_data.freezed.dart';

@freezed
class ForecastCurrentData with _$ForecastCurrentData {
  factory ForecastCurrentData({
    int? lastUpdatedEpoch,
    String? lastUpdated,
    double? tempC,
    double? tempF,
    int? isDay,
    ForecastConditionData? condition,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
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
    double? visKm,
    double? visMiles,
    double? uv,
    double? gustMph,
    double? gustKph,
  }) = _ForecastCurrentData;
}
