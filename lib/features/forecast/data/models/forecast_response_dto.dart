import 'package:app_weather/features/forecast/data/models/forecastday_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_response_dto.g.dart';

@JsonSerializable()
class ForecastResponseDto extends Equatable {

  @JsonKey(name: 'forecast', required: false, includeIfNull: false)
  final ForecastdayResponseDto forecast;

  const ForecastResponseDto({required this.forecast});

  factory ForecastResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastResponseDtoToJson(this);

  @override
  List<Object?> get props => [forecast];
}
