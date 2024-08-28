import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_hour_info_condition_data.freezed.dart';

@freezed
class ForecastHourInfoConditionData with _$ForecastHourInfoConditionData {
  factory ForecastHourInfoConditionData({
    String? text,
    String? icon,
    int? code,
  }) = _ForecastHourInfoConditionData;
}
