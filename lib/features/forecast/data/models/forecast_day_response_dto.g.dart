// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastDayResponseDto _$ForecastDayResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastDayResponseDto(
      maxtempC: (json['maxtemp_c'] as num?)?.toDouble(),
      maxtempF: (json['maxtemp_f'] as num?)?.toDouble(),
      mintempC: (json['mintemp_c'] as num?)?.toDouble(),
      mintempF: (json['mintemp_f'] as num?)?.toDouble(),
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      avgtempF: (json['avgtemp_f'] as num?)?.toDouble(),
      maxwindMph: (json['maxwind_mph'] as num?)?.toDouble(),
      maxwindKph: (json['maxwind_kph'] as num?)?.toDouble(),
      totalprecipMm: (json['totalprecip_mm'] as num?)?.toDouble(),
      totalprecipIn: (json['totalprecip_in'] as num?)?.toDouble(),
      totalsnowCm: (json['totalsnow_cm'] as num?)?.toDouble(),
      avgvisKm: (json['avgvis_km'] as num?)?.toDouble(),
      avgvisMiles: (json['avgvis_miles'] as num?)?.toDouble(),
      avghumidity: (json['avghumidity'] as num?)?.toInt(),
      dailyWillItRain: (json['daily_will_it_rain'] as num?)?.toInt(),
      dailyChanceOfRain: (json['daily_chance_of_rain'] as num?)?.toInt(),
      dailyWillItSnow: (json['daily_will_it_snow'] as num?)?.toInt(),
      dailyChanceOfSnow: (json['daily_chance_of_snow'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : ForecastDayConditionResponseDto.fromJson(
              json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ForecastDayResponseDtoToJson(
    ForecastDayResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('maxtemp_c', instance.maxtempC);
  writeNotNull('maxtemp_f', instance.maxtempF);
  writeNotNull('mintemp_c', instance.mintempC);
  writeNotNull('mintemp_f', instance.mintempF);
  writeNotNull('avgtemp_c', instance.avgtempC);
  writeNotNull('avgtemp_f', instance.avgtempF);
  writeNotNull('maxwind_mph', instance.maxwindMph);
  writeNotNull('maxwind_kph', instance.maxwindKph);
  writeNotNull('totalprecip_mm', instance.totalprecipMm);
  writeNotNull('totalprecip_in', instance.totalprecipIn);
  writeNotNull('totalsnow_cm', instance.totalsnowCm);
  writeNotNull('avgvis_km', instance.avgvisKm);
  writeNotNull('avgvis_miles', instance.avgvisMiles);
  writeNotNull('avghumidity', instance.avghumidity);
  writeNotNull('daily_will_it_rain', instance.dailyWillItRain);
  writeNotNull('daily_chance_of_rain', instance.dailyChanceOfRain);
  writeNotNull('daily_will_it_snow', instance.dailyWillItSnow);
  writeNotNull('daily_chance_of_snow', instance.dailyChanceOfSnow);
  writeNotNull('condition', instance.condition);
  writeNotNull('uv', instance.uv);
  return val;
}
