import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_current_model.dart';
import 'forecast_list_model.dart';
import 'forecast_location_model.dart';

part 'forecast_info_model.freezed.dart';

@freezed
class ForecastInfoModel with _$ForecastInfoModel{

  factory ForecastInfoModel({
    ForecastLocationModel? location,
    ForecastCurrentModel?  current,
    ForecastListModel? forecast,
  }) = _ForecastInfoModel;
}