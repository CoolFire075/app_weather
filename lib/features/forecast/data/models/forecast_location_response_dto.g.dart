// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastLocationResponseDto _$ForecastLocationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastLocationResponseDto(
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      tzId: json['tz_id'] as String?,
      localtimeEpoch: json['localtime_epoch'] as String?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$ForecastLocationResponseDtoToJson(
    ForecastLocationResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('region', instance.region);
  writeNotNull('country', instance.country);
  writeNotNull('lat', instance.lat);
  writeNotNull('lon', instance.lon);
  writeNotNull('tz_id', instance.tzId);
  writeNotNull('localtime_epoch', instance.localtimeEpoch);
  writeNotNull('localtime', instance.localtime);
  return val;
}
