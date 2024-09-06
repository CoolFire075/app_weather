import 'package:freezed_annotation/freezed_annotation.dart';
import 'forecast_day_info_model.dart';

part 'forecast_list_model.freezed.dart';

@freezed
class ForecastListModel with _$ForecastListModel{
  factory ForecastListModel({
    List<ForecastDayInfoModel?>? forecastday,
}) = _ForecastListModel;
}