import 'package:app_weather/features/forecast/domain/models/forecast_condition_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_condition_model.dart';

part 'forecast_current_model.freezed.dart';

@freezed
class ForecastCurrentModel with _$ForecastCurrentModel {
  factory ForecastCurrentModel({
    int? lastUpdatedEpoch,
    String? lastUpdated,
    double? tempC,
    int? isDay,
    ForecastConditionModel? condition,
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
    double? windchillC,
    double? heatindexC,
    double? dewpointC,
    double? visKm,
    double? uv,
    double? gustKph,
  }) = _ForecastCurrentModel;
}
