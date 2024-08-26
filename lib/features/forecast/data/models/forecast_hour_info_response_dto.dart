import 'package:app_weather/features/forecast/data/models/forecast_hour_info_condition_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_hour_info_response_dto.g.dart';

@JsonSerializable()
class ForecastHourInfoResponseDto extends Equatable {
  @JsonKey(name: 'timeEpoch', required: false, includeIfNull: false)
  final int? timeEpoch;
  @JsonKey(name: 'time', required: false, includeIfNull: false)
  final String? time;
  @JsonKey(name: 'temp_c', required: false, includeIfNull: false)
  final double? tempC;
  @JsonKey(name: 'temp_f', required: false, includeIfNull: false)
  final double? tempF;
  @JsonKey(name: 'is_day', required: false, includeIfNull: false)
  final int? isDay;
  @JsonKey(name: 'condition', required: false, includeIfNull: false)
  final ForecastHourInfoConditionResponseDto? condition;
  @JsonKey(name: 'wind_mph', required: false, includeIfNull: false)
  final double? windMph;
  @JsonKey(name: 'wind_kph', required: false, includeIfNull: false)
  final double? windKph;
  @JsonKey(name: 'wind_degree', required: false, includeIfNull: false)
  final int? windDegree;
  @JsonKey(name: 'wind_dir', required: false, includeIfNull: false)
  final String? windDir;
  @JsonKey(name: 'pressure_mb', required: false, includeIfNull: false)
  final double? pressureMb;
  @JsonKey(name: 'pressure_in', required: false, includeIfNull: false)
  final double? pressureIn;
  @JsonKey(name: 'precip_mm', required: false, includeIfNull: false)
  final double? precipMm;
  @JsonKey(name: 'precip_in', required: false, includeIfNull: false)
  final double? precipIn;
  @JsonKey(name: 'snow_cm', required: false, includeIfNull: false)
  final double? snowCm;
  @JsonKey(name: 'humidity', required: false, includeIfNull: false)
  final int? humidity;
  @JsonKey(name: 'cloud', required: false, includeIfNull: false)
  final int? cloud;
  @JsonKey(name: 'feelslike_c', required: false, includeIfNull: false)
  final double? feelslikeC;
  @JsonKey(name: 'feelslike_f', required: false, includeIfNull: false)
  final double? feelslikeF;
  @JsonKey(name: 'windchill_c', required: false, includeIfNull: false)
  final double? windchillC;
  @JsonKey(name: 'windchill_f', required: false, includeIfNull: false)
  final double? windchillF;
  @JsonKey(name: 'heatindex_c', required: false, includeIfNull: false)
  final double? heatindexC;
  @JsonKey(name: 'heatindex_f', required: false, includeIfNull: false)
  final double? heatindexF;
  @JsonKey(name: 'dewpoint_c', required: false, includeIfNull: false)
  final double? dewpointC;
  @JsonKey(name: 'dewpoint_f', required: false, includeIfNull: false)
  final double? dewpointF;
  @JsonKey(name: 'will_it_rain', required: false, includeIfNull: false)
  final int? willItRain;
  @JsonKey(name: 'chance_of_rain', required: false, includeIfNull: false)
  final int? chanceOfRain;
  @JsonKey(name: 'will_it_snow', required: false, includeIfNull: false)
  final int? willItSnow;
  @JsonKey(name: 'chance_of_snow', required: false, includeIfNull: false)
  final int? chanceOfSnow;
  @JsonKey(name: 'vis_km', required: false, includeIfNull: false)
  final double? visKm;
  @JsonKey(name: 'vis_miles', required: false, includeIfNull: false)
  final double? visMiles;
  @JsonKey(name: 'gust_mph', required: false, includeIfNull: false)
  final double? gustMhp;
  @JsonKey(name: 'gust_kph', required: false, includeIfNull: false)
  final double? gustKph;
  @JsonKey(name: 'uv', required: false, includeIfNull: false)
  final int? uv;

  const ForecastHourInfoResponseDto({
    required this.timeEpoch,
    required this.time,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.snowCm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatindexC,
    required this.heatindexF,
    required this.dewpointC,
    required this.dewpointF,
    required this.willItRain,
    required this.chanceOfRain,
    required this.willItSnow,
    required this.chanceOfSnow,
    required this.visKm,
    required this.visMiles,
    required this.gustMhp,
    required this.gustKph,
    required this.uv,
  });

  @override
  List<Object?> get props => [
        timeEpoch,
        time,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        snowCm,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        windchillC,
        windchillF,
        heatindexC,
        heatindexF,
        dewpointC,
        dewpointF,
        willItRain,
        chanceOfRain,
        willItSnow,
        chanceOfSnow,
        visKm,
        visMiles,
        gustMhp,
        gustKph,
        uv,
      ];
}
