import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_astro_model.freezed.dart';

@freezed
class ForecastAstroModel with _$ForecastAstroModel {
  factory ForecastAstroModel({
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    int? moonIllumination,
    int? isMoonUp,
    int? isSunUp,
  }) = _ForecastAstroModel;
}
