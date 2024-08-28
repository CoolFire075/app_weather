// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_hour_info_condition_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastHourInfoConditionResponseDto
    _$ForecastHourInfoConditionResponseDtoFromJson(Map<String, dynamic> json) =>
        ForecastHourInfoConditionResponseDto(
          text: json['text'] as String?,
          icon: json['icon'] as String?,
          code: (json['code'] as num?)?.toInt(),
        );

Map<String, dynamic> _$ForecastHourInfoConditionResponseDtoToJson(
    ForecastHourInfoConditionResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('icon', instance.icon);
  writeNotNull('code', instance.code);
  return val;
}
