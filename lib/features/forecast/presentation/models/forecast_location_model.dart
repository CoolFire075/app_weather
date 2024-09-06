import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_location_model.freezed.dart';

@freezed
class ForecastLocationModel with _$ForecastLocationModel {
  factory ForecastLocationModel({
    String? name,
    String? region,
    String? country,
    String? lat,
    String? lon,
    String? tzId,
    String? localtimeEpoch,
    String? localtime,
  }) = _ForecastLocationModel;
}
