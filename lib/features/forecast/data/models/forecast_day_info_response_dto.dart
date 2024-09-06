import 'package:app_weather/features/forecast/data/models/forecast_astro_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_day_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_hour_info_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_day_info_response_dto.g.dart';

@JsonSerializable()
class ForecastDayInfoResponseDto extends Equatable {

  @JsonKey(name: 'date', required: false, includeIfNull: false)
  final String? date;

  @JsonKey(name: 'date_epoch', required: false, includeIfNull: false)
  final int? dateEpoch;

  @JsonKey(name: 'day', required: false, includeIfNull: false)
  final ForecastDayResponseDto? day;

  @JsonKey(name: 'astro', required: false, includeIfNull: false)
  final ForecastAstroResponseDto? astro;

  @JsonKey(name: 'hour', required: false, includeIfNull: false)
  final List<ForecastHourInfoResponseDto?>? hour;

   ForecastDayInfoResponseDto({
    required this.date,
    required this.dateEpoch,
    required this.day,
    required this.astro,
    required this.hour,
  });

  factory ForecastDayInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayInfoResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayInfoResponseDtoToJson(this);


  @override
  List<Object?> get props => [
        date,
        dateEpoch,
        day,
        astro,
        hour,
      ];
}
