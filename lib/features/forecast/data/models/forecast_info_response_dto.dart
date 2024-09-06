import 'package:app_weather/features/forecast/data/models/forecast_current_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_location_response_dto.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'forecast_list_response_dto.dart';

part 'forecast_info_response_dto.g.dart';

@JsonSerializable()
class ForecastInfoResponseDto extends Equatable {
  @JsonKey(name: 'location', required: false, includeIfNull: false)
  final ForecastLocationResponseDto location;
  @JsonKey(name: 'current', required: false, includeIfNull: false)
  final ForecastCurrentResponseDto current;
  @JsonKey(name: 'forecast', required: false, includeIfNull: false)
  final ForecastListResponseDto forecast;

  const ForecastInfoResponseDto({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory ForecastInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastInfoResponseDtoFromJson(json);

  Map<String, dynamic> toJson()=> _$ForecastInfoResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        location,
        current,
        forecast,
      ];
}
