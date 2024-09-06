import 'package:app_weather/features/forecast/domain/models/forecast_day_condition_data.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_day_condition_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_day_model.freezed.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  factory ForecastDayModel({
    double? maxtempC,
    double? mintempC,
    double? avgtempC,
    double? maxwindKph,
    double? totalprecipMm,
    double? totalprecipIn,
    double? totalsnowCm,
    double? avgvisKm,
    int? avghumidity,
    int? dailyWillItRain,
    int? dailyChanceOfRain,
    int? dailyWillItSnow,
    int? dailyChanceOfSnow,
    ForecastDayConditionModel? condition,
    double? uv,
  }) = _ForecastDayModel;
}
