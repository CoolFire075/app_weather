import 'package:freezed_annotation/freezed_annotation.dart';
import 'forecast_day_info_data.dart';

part 'forecast_list_data.freezed.dart';

@freezed
class ForecastListData with _$ForecastListData{
  factory ForecastListData({
    List<ForecastDayInfoData?>? forecastday,
}) = _ForecastListData;
}