import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_condition_data.freezed.dart';

@freezed
class ForecastConditionData with _$ForecastConditionData{

  factory ForecastConditionData({
    String? text,
    String? icon,
    int?    code,
}) = _ForecastConditionData;
}