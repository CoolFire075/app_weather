import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_location_response_dto.g.dart';

@JsonSerializable()
class ForecastLocationResponseDto extends Equatable {
  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;
  @JsonKey(name: 'region', required: false, includeIfNull: false)
  final String? region;
  @JsonKey(name: 'country', required: false, includeIfNull: false)
  final String? country;
  @JsonKey(name: 'lat', required: false, includeIfNull: false)
  final String? lat;
  @JsonKey(name: 'lon', required: false, includeIfNull: false)
  final String? lon;
  @JsonKey(name: 'tz_id', required: false, includeIfNull: false)
  final String? tzId;
  @JsonKey(name: 'localtime_epoch', required: false, includeIfNull: false)
  final String? localtimeEpoch;
  @JsonKey(name: 'localtime', required: false, includeIfNull: false)
  final String? localtime;

  const ForecastLocationResponseDto({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory ForecastLocationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastLocationResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastLocationResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        name,
        region,
        country,
        lat,
        localtime,
        tzId,
        localtimeEpoch,
        localtime,
      ];
}
