import 'package:freezed_annotation/freezed_annotation.dart';
import 'forecast_day_info_data.dart';

part 'forecastday_data.freezed.dart';

@freezed
class ForecastdayData with _$ForecastdayData{
  factory ForecastdayData({
    List<ForecastDayInfoData?> forecastday,
}) = _ForecastdayData;
}