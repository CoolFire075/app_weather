import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_day_condition_response_dto.g.dart';

@JsonSerializable()
class ForecastDayConditionResponseDto extends Equatable {
  @JsonKey(name: 'text', required: false, includeIfNull: false)
  final String? text;
  @JsonKey(name: 'icon', required: false, includeIfNull: false)
  final String? icon;
  @JsonKey(name: 'code', required: false, includeIfNull: false)
  final int? code;

  const ForecastDayConditionResponseDto(
      {required this.text, required this.icon, required this.code});

  factory ForecastDayConditionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayConditionResponseDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForecastDayConditionResponseDtoToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        text,
        icon,
        code,
      ];
}
