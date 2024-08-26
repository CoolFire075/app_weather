import 'package:app_weather/features/forecast/data/models/forecast_current_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_location_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_data_response_dto.g.dart';

@JsonSerializable()
class ForecastDataResponseDto extends Equatable {
  @JsonKey(name: 'location', required: false, includeIfNull: false)
  final ForecastLocationResponseDto location;
  @JsonKey(name: 'current', required: false, includeIfNull: false)
  final ForecastCurrentResponseDto current;
  @JsonKey(name: 'forecast', required: false, includeIfNull: false)
  final ForecastResponseDto forecast;

  const ForecastDataResponseDto({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory ForecastDataResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDataResponseDtoFromJson(json);

  Map<String, dynamic> toJson()=> _$ForecastDataResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        location,
        current,
        forecast,
      ];
}
