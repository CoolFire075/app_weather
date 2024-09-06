import 'package:app_weather/features/forecast/presentation/models/forecast_astro_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_day_model.dart';
import 'forecast_hour_info_model.dart';

part 'forecast_day_info_model.freezed.dart';

@freezed
class ForecastDayInfoModel with _$ForecastDayInfoModel {
  factory ForecastDayInfoModel({
    String? date,
    int? dateEpoch,
    ForecastDayModel? day,
    ForecastAstroModel? astro,
    List<ForecastHourInfoModel?>? hour,
  }) = _ForecastDayInfoModel;
}
