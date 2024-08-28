// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastInfoResponseDto _$ForecastInfoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastInfoResponseDto(
      location: ForecastLocationResponseDto.fromJson(
          json['location'] as Map<String, dynamic>),
      current: ForecastCurrentResponseDto.fromJson(
          json['current'] as Map<String, dynamic>),
      forecast: ForecastResponseDto.fromJson(
          json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastInfoResponseDtoToJson(
        ForecastInfoResponseDto instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };
