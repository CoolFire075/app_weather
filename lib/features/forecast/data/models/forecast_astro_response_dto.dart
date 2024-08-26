import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_astro_response_dto.g.dart';

@JsonSerializable()
class ForecastAstroResponseDto extends Equatable {
  @JsonKey(name: 'sunrise', required: false, includeIfNull: false)
  final String? sunrise;
  @JsonKey(name: 'sunset', required: false, includeIfNull: false)
  final String? sunset;
  @JsonKey(name: 'moonrise', required: false, includeIfNull: false)
  final String? moonrise;
  @JsonKey(name: 'moonset', required: false, includeIfNull: false)
  final String? moonset;
  @JsonKey(name: 'moon_phase', required: false, includeIfNull: false)
  final String? moonPhase;
  @JsonKey(name: 'moon_illumination', required: false, includeIfNull: false)
  final int? moonIllumination;
  @JsonKey(name: 'is_moon_up', required: false, includeIfNull: false)
  final int? isMoonUp;
  @JsonKey(name: 'is_sun_up', required: false, includeIfNull: false)
  final int? isSunUp;

  const ForecastAstroResponseDto({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.moonIllumination,
    required this.isMoonUp,
    required this.isSunUp,
  });

  factory ForecastAstroResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastAstroResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastAstroResponseDtoToJson(this);

  @override
  List<Object?> get props => [
    sunrise,
    sunset,
    moonrise,
    moonset,
    moonPhase,
    moonIllumination,
    isMoonUp,
    isSunUp,
  ];
}
