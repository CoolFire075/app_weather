import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_location_data.freezed.dart';

@freezed
class ForecastLocationData with _$ForecastLocationData {
  factory ForecastLocationData({
    String? name,
    String? region,
    String? country,
    String? lat,
    String? lon,
    String? tzId,
    String? localtimeEpoch,
    String? localtime,
  }) = _ForecastLocationData;
}
