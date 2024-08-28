// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecastday_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastdayResponseDto _$ForecastdayResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastdayResponseDto(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : ForecastDayInfoResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastdayResponseDtoToJson(
        ForecastdayResponseDto instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };
