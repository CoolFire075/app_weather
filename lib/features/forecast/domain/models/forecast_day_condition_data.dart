import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_day_condition_data.freezed.dart';

@freezed
class ForecastDayConditionData with _$ForecastDayConditionData {
  factory ForecastDayConditionData({
    String? text,
    String? icon,
    int? code,
  }) = _ForecastDayConditionData;
}
