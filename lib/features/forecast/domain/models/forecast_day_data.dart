import 'package:app_weather/features/forecast/domain/models/forecast_day_condition_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_day_data.freezed.dart';

@freezed
class ForecastDayData with _$ForecastDayData {
  factory ForecastDayData({
    double? maxtempC,
    double? maxtempF,
    double? mintempC,
    double? mintempF,
    double? avgtempC,
    double? avgtempF,
    double? maxwindMph,
    double? maxwindKph,
    double? totalprecipMm,
    double? totalprecipIn,
    double? totalsnowCm,
    double? avgvisKm,
    double? avgvisMiles,
    int? avghumidity,
    int? dailyWillItRain,
    int? dailyChanceOfRain,
    int? dailyWillItSnow,
    int? dailyChanceOfSnow,
    ForecastDayConditionData? condition,
    double? uv,
  }) = _ForecastDayData;
}
