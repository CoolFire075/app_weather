import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_day_info_response_dto.dart';

part 'forecast_list_response_dto.g.dart';

@JsonSerializable()
class ForecastListResponseDto extends Equatable {

  @JsonKey(name: 'forecastday', required: false, includeIfNull: false)
  final List<ForecastDayInfoResponseDto?>? forecastday;

  const ForecastListResponseDto({ this.forecastday});

  factory ForecastListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastListResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastListResponseDtoToJson(this);

  @override
  List<Object?> get props => [forecastday];
}
