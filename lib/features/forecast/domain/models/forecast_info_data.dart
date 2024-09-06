import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_current_data.dart';
import 'forecast_list_data.dart';
import 'forecast_location_data.dart';

part 'forecast_info_data.freezed.dart';

@freezed
class ForecastInfoData with _$ForecastInfoData{

  factory ForecastInfoData({
    ForecastLocationData? location,
    ForecastCurrentData?  current,
    ForecastListData? forecast,
  }) = _ForecastInfoData;
}