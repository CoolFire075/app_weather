import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_hour_info_condition_model.freezed.dart';

@freezed
class ForecastHourInfoConditionModel with _$ForecastHourInfoConditionModel {
  factory ForecastHourInfoConditionModel({
    String? text,
    String? icon,
    int? code,
  }) = _ForecastHourInfoConditionModel;
}
