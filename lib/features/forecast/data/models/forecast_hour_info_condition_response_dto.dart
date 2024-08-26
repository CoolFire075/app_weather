import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_hour_info_condition_response_dto.g.dart';

@JsonSerializable()
class ForecastHourInfoConditionResponseDto extends Equatable {
  @JsonKey(name: 'text', required: false, includeIfNull: false)
  final String? text;
  @JsonKey(name: 'icon', required: false, includeIfNull: false)
  final String? icon;
  @JsonKey(name: 'code', required: false, includeIfNull: false)
  final int? code;

  const ForecastHourInfoConditionResponseDto({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory ForecastHourInfoConditionResponseDto.fromJson(
          Map<String, dynamic> json) =>
      _$ForecastHourInfoConditionResponseDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForecastHourInfoConditionResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        text,
        icon,
        code,
      ];
}
