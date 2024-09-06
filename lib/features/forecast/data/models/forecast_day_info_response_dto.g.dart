// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastDayInfoResponseDto _$ForecastDayInfoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastDayInfoResponseDto(
      date: json['date'] as String?,
      dateEpoch: (json['date_epoch'] as num?)?.toInt(),
      day: json['day'] == null
          ? null
          : ForecastDayResponseDto.fromJson(
              json['day'] as Map<String, dynamic>),
      astro: json['astro'] == null
          ? null
          : ForecastAstroResponseDto.fromJson(
              json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ForecastHourInfoResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDayInfoResponseDtoToJson(
    ForecastDayInfoResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date', instance.date);
  writeNotNull('date_epoch', instance.dateEpoch);
  writeNotNull('day', instance.day);
  writeNotNull('astro', instance.astro);
  writeNotNull('hour', instance.hour);
  return val;
}
