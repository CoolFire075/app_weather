import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_condition_model.freezed.dart';

@freezed
class ForecastConditionModel with _$ForecastConditionModel{

  factory ForecastConditionModel({
    String? text,
    String? icon,
    int?    code,
}) = _ForecastConditionModel;
}