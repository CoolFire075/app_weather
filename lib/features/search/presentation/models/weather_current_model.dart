import 'package:app_weather/features/search/presentation/models/weather_condition_state.dart';
import 'package:equatable/equatable.dart';

class WeatherCurrentModel extends Equatable {
  final String lastUpdated;
  final double tempC;
  final WeatherConditionState condition;
  final double windKph;
  final int windDegree;
  final double pressureMb;
  final double precipMm;
  final int humidity;
  final int cloud;
  final double feelslikeC;
  final double windchillC;
  final double heatindexC;
  final double dewpointC;
  final double visKm;

  WeatherCurrentModel({
    required this.lastUpdated,
    required this.tempC,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.pressureMb,
    required this.precipMm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.windchillC,
    required this.heatindexC,
    required this.dewpointC,
    required this.visKm,
  });

  @override
  List<Object?> get props => [
        lastUpdated,
        tempC,
        condition,
        windKph,
        windDegree,
        pressureMb,
        precipMm,
        humidity,
        cloud,
        feelslikeC,
        windchillC,
        heatindexC,
        dewpointC,
        visKm,
      ];
}
