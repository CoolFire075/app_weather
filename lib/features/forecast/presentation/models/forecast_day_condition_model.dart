import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_day_condition_model.freezed.dart';

@freezed
class ForecastDayConditionModel with _$ForecastDayConditionModel {
  factory ForecastDayConditionModel({
    String? text,
    String? icon,
    int? code,
  }) = _ForecastDayConditionModel;
}
