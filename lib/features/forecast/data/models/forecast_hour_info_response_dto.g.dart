// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_hour_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastHourInfoResponseDto _$ForecastHourInfoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastHourInfoResponseDto(
      timeEpoch: (json['time_epoch'] as num?)?.toInt(),
      time: json['time'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      tempF: (json['temp_f'] as num?)?.toDouble(),
      isDay: (json['is_day'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : ForecastHourInfoConditionResponseDto.fromJson(
              json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num?)?.toDouble(),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      windDegree: (json['wind_degree'] as num?)?.toInt(),
      windDir: json['wind_dir'] as String?,
      pressureMb: (json['pressure_mb'] as num?)?.toDouble(),
      pressureIn: (json['pressure_in'] as num?)?.toDouble(),
      precipMm: (json['precip_mm'] as num?)?.toDouble(),
      precipIn: (json['precip_in'] as num?)?.toDouble(),
      snowCm: (json['snow_cm'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toInt(),
      cloud: (json['cloud'] as num?)?.toInt(),
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
      windchillC: (json['windchill_c'] as num?)?.toDouble(),
      windchillF: (json['windchill_f'] as num?)?.toDouble(),
      heatindexC: (json['heatindex_c'] as num?)?.toDouble(),
      heatindexF: (json['heatindex_f'] as num?)?.toDouble(),
      dewpointC: (json['dewpoint_c'] as num?)?.toDouble(),
      dewpointF: (json['dewpoint_f'] as num?)?.toDouble(),
      willItRain: (json['will_it_rain'] as num?)?.toInt(),
      chanceOfRain: (json['chance_of_rain'] as num?)?.toInt(),
      willItSnow: (json['will_it_snow'] as num?)?.toInt(),
      chanceOfSnow: (json['chance_of_snow'] as num?)?.toInt(),
      visKm: (json['vis_km'] as num?)?.toDouble(),
      visMiles: (json['vis_miles'] as num?)?.toDouble(),
      gustMhp: (json['gust_mph'] as num?)?.toDouble(),
      gustKph: (json['gust_kph'] as num?)?.toDouble(),
      uv: (json['uv'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ForecastHourInfoResponseDtoToJson(
    ForecastHourInfoResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time_epoch', instance.timeEpoch);
  writeNotNull('time', instance.time);
  writeNotNull('temp_c', instance.tempC);
  writeNotNull('temp_f', instance.tempF);
  writeNotNull('is_day', instance.isDay);
  writeNotNull('condition', instance.condition);
  writeNotNull('wind_mph', instance.windMph);
  writeNotNull('wind_kph', instance.windKph);
  writeNotNull('wind_degree', instance.windDegree);
  writeNotNull('wind_dir', instance.windDir);
  writeNotNull('pressure_mb', instance.pressureMb);
  writeNotNull('pressure_in', instance.pressureIn);
  writeNotNull('precip_mm', instance.precipMm);
  writeNotNull('precip_in', instance.precipIn);
  writeNotNull('snow_cm', instance.snowCm);
  writeNotNull('humidity', instance.humidity);
  writeNotNull('cloud', instance.cloud);
  writeNotNull('feelslike_c', instance.feelslikeC);
  writeNotNull('feelslike_f', instance.feelslikeF);
  writeNotNull('windchill_c', instance.windchillC);
  writeNotNull('windchill_f', instance.windchillF);
  writeNotNull('heatindex_c', instance.heatindexC);
  writeNotNull('heatindex_f', instance.heatindexF);
  writeNotNull('dewpoint_c', instance.dewpointC);
  writeNotNull('dewpoint_f', instance.dewpointF);
  writeNotNull('will_it_rain', instance.willItRain);
  writeNotNull('chance_of_rain', instance.chanceOfRain);
  writeNotNull('will_it_snow', instance.willItSnow);
  writeNotNull('chance_of_snow', instance.chanceOfSnow);
  writeNotNull('vis_km', instance.visKm);
  writeNotNull('vis_miles', instance.visMiles);
  writeNotNull('gust_mph', instance.gustMhp);
  writeNotNull('gust_kph', instance.gustKph);
  writeNotNull('uv', instance.uv);
  return val;
}
