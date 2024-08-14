
import 'package:app_weather/features/search/data/models/weather_current_response_dto.dart';
import 'package:app_weather/features/search/data/models/weather_location_response_dto.dart';

class WeatherDataResponseDto {
  final WeatherLocationResponseDto location;
  final WeatherCurrentResponseDto current;

  WeatherDataResponseDto({
    required this.location,
    required this.current,
  });

  factory WeatherDataResponseDto.fromJson(Map<String, dynamic> json) {
    return WeatherDataResponseDto(
        location: WeatherLocationResponseDto.fromJson(json['location']),
        current: WeatherCurrentResponseDto.fromJson(json['current']));
  }

  @override
  String toString() {
    return 'WeatherDataResponseDto{location: $location, current: $current}';
  }
  @override
  List<Object?> get props => [
    location,
    current,
  ];
}
