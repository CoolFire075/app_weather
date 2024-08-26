import 'package:app_weather/features/search/domain/models/weather_condition_data.dart';
import 'package:app_weather/features/search/domain/models/weather_current_data.dart';
import 'package:app_weather/features/search/domain/models/weather_location_data.dart';
import 'package:app_weather/features/search/presentation/models/weather_condition_state.dart';
import 'package:app_weather/features/search/presentation/models/weather_current_model.dart';
import 'package:app_weather/features/search/presentation/models/weather_location_model.dart';
import 'package:app_weather/features/search/presentation/models/weather_model.dart';

import '../../domain/models/weather_data.dart';

class WeatherModelMapper {
  WeatherModel mapWeatherData(WeatherData domain) {
    final location = domain.location;
    final current = domain.current;
    return WeatherModel(
        location: location != null ? mapWeatherLocationData(location) : null,
        current: current != null ? mapWeatherCurrentData(current) : null);
  }

  WeatherLocationModel mapWeatherLocationData(WeatherLocationData domain) {
    return WeatherLocationModel(
      name: domain.name ?? '',
      region: domain.region ?? '',
      country: domain.country ?? '',
      localtime: domain.localtime ?? '',
    );
  }

  WeatherCurrentModel mapWeatherCurrentData(WeatherCurrentData domain) {
    final condition = domain.condition;
    final pressure = domain.pressureMb ?? 0;
    return WeatherCurrentModel(
      lastUpdated: domain.lastUpdated ?? '',
      tempC: '${domain.tempC ?? 0}°C',
      condition: condition != null
          ? mapWeatherConditionData(condition)
          : WeatherConditionState.unknown,
      windKph: '${domain.windKph ?? 0}km/h',
      windDegree: domain.windDegree ?? 0,
      pressureMb: '${pressure * 0.75}мб',
      precipMm: '${domain.precipMm ?? 0}мм',
      humidity: '${domain.humidity ?? 0}%',
      cloud: '${domain.cloud ?? 0}%',
      feelslikeC: '${domain.feelslikeC ?? 0}°C',
      windchillC: domain.windchillC ?? 0,
      heatindexC: '${domain.heatindexC ?? 0}%',
      dewpointC: domain.dewpointC ?? 0,
      visKm: domain.visKm ?? 0,
    );
  }

  WeatherConditionState mapWeatherConditionData(WeatherConditionData domain) {
    return WeatherConditionState.values.firstWhere(
      (element) => element.code == domain.code,
      orElse: () => WeatherConditionState.unknown,
    );
  }
}
