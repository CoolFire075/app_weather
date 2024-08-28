// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_astro_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastAstroResponseDto _$ForecastAstroResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastAstroResponseDto(
      sunrise: json['sunrise'] as String?,
      sunset: json['sunset'] as String?,
      moonrise: json['moonrise'] as String?,
      moonset: json['moonset'] as String?,
      moonPhase: json['moon_phase'] as String?,
      moonIllumination: (json['moon_illumination'] as num?)?.toInt(),
      isMoonUp: (json['is_moon_up'] as num?)?.toInt(),
      isSunUp: (json['is_sun_up'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ForecastAstroResponseDtoToJson(
    ForecastAstroResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sunrise', instance.sunrise);
  writeNotNull('sunset', instance.sunset);
  writeNotNull('moonrise', instance.moonrise);
  writeNotNull('moonset', instance.moonset);
  writeNotNull('moon_phase', instance.moonPhase);
  writeNotNull('moon_illumination', instance.moonIllumination);
  writeNotNull('is_moon_up', instance.isMoonUp);
  writeNotNull('is_sun_up', instance.isSunUp);
  return val;
}
