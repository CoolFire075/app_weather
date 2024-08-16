import 'package:app_weather/features/search/data/models/weather_condition_response_dto.dart';
import 'package:app_weather/features/search/data/models/weather_current_response_dto.dart';
import 'package:app_weather/features/search/data/models/weather_data_response_dto.dart';
import 'package:app_weather/features/search/data/models/weather_location_response_dto.dart';
import 'package:app_weather/features/search/domain/models/weather_condition_data.dart';
import 'package:app_weather/features/search/domain/models/weather_current_data.dart';
import 'package:app_weather/features/search/domain/models/weather_data.dart';
import 'package:app_weather/features/search/domain/models/weather_location_data.dart';

class CitySearchMapper {
  WeatherData mapWeatherData(WeatherDataResponseDto dto) {
    final location = dto.location;
    final current = dto.current;
    return WeatherData(
      location: location != null ? mapWeatherLocationData(location) : null,
      current: current != null ? mapWeatherCurrentData(current) : null,
    );
  }

  WeatherLocationData mapWeatherLocationData(WeatherLocationResponseDto dto) {
    return WeatherLocationData(
      name: dto.name,
      region: dto.region,
      country: dto.country,
      lat: dto.lat,
      lon: dto.lon,
      tzId: dto.tzId,
      localtimeEpoch: dto.localtimeEpoch,
      localtime: dto.localtime,
    );
  }

  WeatherCurrentData mapWeatherCurrentData(WeatherCurrentResponseDto dto) {
    final condition = dto.condition;
    return WeatherCurrentData(
      lastUpdatedEpoch: dto.lastUpdatedEpoch,
      lastUpdated: dto.lastUpdated,
      tempC: dto.tempC,
      tempF: dto.tempF,
      isDay: dto.isDay,
      condition: condition != null ? mapWeatherConditionData(condition) : null,
      windMph: dto.windMph,
      windKph: dto.windKph,
      windDegree: dto.windDegree,
      windDir: dto.windDir,
      pressureMb: dto.pressureMb,
      pressureIn: dto.pressureIn,
      precipMm: dto.precipMm,
      precipIn: dto.precipIn,
      humidity: dto.humidity,
      cloud: dto.cloud,
      feelslikeC: dto.feelslikeC,
      feelslikeF: dto.feelslikeF,
      windchillC: dto.windchillC,
      windchillF: dto.windchillF,
      heatindexC: dto.heatindexC,
      heatindexF: dto.heatindexF,
      dewpointC: dto.dewpointC,
      dewpointF: dto.dewpointF,
      visKm: dto.visKm,
      visMiles: dto.visMiles,
      uv: dto.uv,
      gustMph: dto.gustMph,
      gustKph: dto.gustKph,
    );
  }

  WeatherConditionData mapWeatherConditionData(
      WeatherConditionResponseDto domain) {
    return WeatherConditionData(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }
}
