import 'package:app_weather/features/search/presentation/models/weather_condition_state.dart';
import 'package:equatable/equatable.dart';

class WeatherCurrentModel extends Equatable {
  final String lastUpdated;
  final String tempC;
  final WeatherConditionState condition;
  final String windKph;
  final int windDegree;
  final String pressureMb;
  final String precipMm;
  final String humidity;
  final String cloud;
  final String feelslikeC;
  final double windchillC;
  final String heatindexC;
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
