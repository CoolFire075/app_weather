import 'package:app_weather/features/forecast/data/models/forecast_day_info_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecastday_response_dto.g.dart';

@JsonSerializable()
class ForecastdayResponseDto extends Equatable {
  @JsonKey(name: 'forecastday', required: false, includeIfNull: false)
  List<ForecastDayInfoResponseDto?> forecastday;

  ForecastdayResponseDto({required this.forecastday});

  factory ForecastdayResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastdayResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastdayResponseDtoToJson(this);

  @override
  List<Object?> get props => [forecastday];
}
