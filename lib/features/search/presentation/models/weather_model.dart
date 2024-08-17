import 'package:app_weather/features/search/presentation/models/weather_current_model.dart';
import 'package:app_weather/features/search/presentation/models/weather_location_model.dart';
import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  final WeatherLocationModel? location;
  final WeatherCurrentModel? current;

  const WeatherModel({required this.current, required this.location});

  @override
  List<Object?> get props => [
        location,
        current,
      ];

  @override
  String toString() {
    return 'location: $location, current: $current';
  }
}
