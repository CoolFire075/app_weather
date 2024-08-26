import 'package:app_weather/features/forecast/data/models/forecast_day_condition_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_day_response_dto.g.dart';

@JsonSerializable()
class ForecastDayResponseDto extends Equatable {
  @JsonKey(name: 'maxtemp_c', required: false, includeIfNull: false)
  final double? maxtempC;
  @JsonKey(name: 'maxtemp_f', required: false, includeIfNull: false)
  final double? maxtempF;
  @JsonKey(name: 'mintemp_c', required: false, includeIfNull: false)
  final double? mintempC;
  @JsonKey(name: 'mintemp_f', required: false, includeIfNull: false)
  final double? mintempF;
  @JsonKey(name: 'avgtemp_c', required: false, includeIfNull: false)
  final double? avgtempC;
  @JsonKey(name: 'avgtemp_f', required: false, includeIfNull: false)
  final double? avgtempF;
  @JsonKey(name: 'maxwind_mph', required: false, includeIfNull: false)
  final double? maxwindMph;
  @JsonKey(name: 'maxwind_kph', required: false, includeIfNull: false)
  final double? maxwindKph;
  @JsonKey(name: 'totalprecip_mm', required: false, includeIfNull: false)
  final double? totalprecipMm;
  @JsonKey(name: 'totalprecip_in', required: false, includeIfNull: false)
  final double? totalprecipIn;
  @JsonKey(name: 'totalsnow_cm', required: false, includeIfNull: false)
  final double? totalsnowCm;
  @JsonKey(name: 'avgvis_km', required: false, includeIfNull: false)
  final double? avgvisKm;
  @JsonKey(name: 'avgvis_miles', required: false, includeIfNull: false)
  final double? avgvisMiles;
  @JsonKey(name: 'avghumidity', required: false, includeIfNull: false)
  final int? avghumidity;
  @JsonKey(name: 'daily_will_it_rain', required: false, includeIfNull: false)
  final int? dailyWillItRain;
  @JsonKey(name: 'daily_chance_of_rain', required: false, includeIfNull: false)
  final int? dailyChanceOfRain;
  @JsonKey(name: 'daily_will_it_snow', required: false, includeIfNull: false)
  final int? dailyWillItSnow;
  @JsonKey(name: 'daily_chance_of_snow', required: false, includeIfNull: false)
  final int? dailyChanceOfSnow;
  @JsonKey(name: 'condition', required: false, includeIfNull: false)
  final ForecastDayConditionResponseDto? condition;
  @JsonKey(name: 'uv', required: false, includeIfNull: false)
  final double? uv;

  const ForecastDayResponseDto(
      {required this.maxtempC,
      required this.maxtempF,
      required this.mintempC,
      required this.mintempF,
      required this.avgtempC,
      required this.avgtempF,
      required this.maxwindMph,
      required this.maxwindKph,
      required this.totalprecipMm,
      required this.totalprecipIn,
      required this.totalsnowCm,
      required this.avgvisKm,
      required this.avgvisMiles,
      required this.avghumidity,
      required this.dailyWillItRain,
      required this.dailyChanceOfRain,
      required this.dailyWillItSnow,
      required this.dailyChanceOfSnow,
      required this.condition,
      required this.uv});

  factory ForecastDayResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        maxtempC,
        maxtempF,
        mintempC,
        mintempF,
        avgtempC,
        avgtempF,
        maxwindMph,
        maxwindKph,
        totalprecipMm,
        totalprecipIn,
        totalsnowCm,
        avgvisKm,
        avgvisMiles,
        avghumidity,
        dailyWillItRain,
        dailyChanceOfRain,
        dailyWillItSnow,
        dailyChanceOfSnow,
        condition,
        uv,
      ];
}
