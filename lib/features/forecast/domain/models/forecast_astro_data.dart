import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_astro_data.freezed.dart';

@freezed
class ForecastAstroData with _$ForecastAstroData {
  factory ForecastAstroData({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    int? moonIllumination,
    int? isMoonUp,
    int? isSunUp,
  }) = _ForecastAstroData;
}
