// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_condition_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastConditionResponseDto _$ForecastConditionResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastConditionResponseDto(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ForecastConditionResponseDtoToJson(
    ForecastConditionResponseDto instance) {
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
