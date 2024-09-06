import 'package:app_weather/features/forecast/presentation/models/forecast_hour_info_condition_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_hour_info_model.freezed.dart';

@freezed
class ForecastHourInfoModel with _$ForecastHourInfoModel{
  factory ForecastHourInfoModel({
    int? timeEpoch,
    String? time,
    double? tempC,
    int? isDay,
    ForecastHourInfoConditionModel? condition,
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
    double? windchillC,
    double? heatindexC,
    double? dewpointC,
    int? willItRain,
    int? chanceOfRain,
    int? willItSnow,
    int? chanceOfSnow,
    double? visKm,
    double? gustKph,
    int? uv,
  }) = _ForecastHourInfoModel;
}
