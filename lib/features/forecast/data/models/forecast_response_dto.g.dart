// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponseDto _$ForecastResponseDtoFromJson(Map<String, dynamic> json) =>
    ForecastResponseDto(
      forecast: ForecastdayResponseDto.fromJson(
          json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastResponseDtoToJson(
        ForecastResponseDto instance) =>
    <String, dynamic>{
      'forecast': instance.forecast,
    };
