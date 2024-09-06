import 'package:app_weather/features/forecast/data/models/forecast_current_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_info_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_list_response_dto.dart';
import 'package:app_weather/features/forecast/data/models/forecast_location_response_dto.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_current_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_day_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_info_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_list_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_location_data.dart';

import '../../domain/models/forecast_astro_data.dart';
import '../../domain/models/forecast_condition_data.dart';
import '../../domain/models/forecast_day_condition_data.dart';
import '../../domain/models/forecast_day_info_data.dart';
import '../../domain/models/forecast_hour_info_condition_data.dart';
import '../../domain/models/forecast_hour_info_data.dart';
import '../models/forecast_astro_response_dto.dart';
import '../models/forecast_condition_response_dto.dart';
import '../models/forecast_day_condition_response_dto.dart';
import '../models/forecast_day_info_response_dto.dart';
import '../models/forecast_day_response_dto.dart';
import '../models/forecast_hour_info_condition_response_dto.dart';
import '../models/forecast_hour_info_response_dto.dart';

class ForecastMapper {
  ForecastInfoData mapForecastData(ForecastInfoResponseDto dto) {
    return ForecastInfoData(
        location: _mapForecastLocationData(dto.location),
        current: _mapForecastCurrentData(dto.current),
        forecast: _mapForecastListData(dto.forecast));
  }

  ForecastLocationData _mapForecastLocationData(
      ForecastLocationResponseDto dto) {
    return ForecastLocationData(
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

  ForecastListData _mapForecastListData(ForecastListResponseDto dto) {
    return ForecastListData(
      forecastday:
      dto.forecastday?.map((e) => mapWeatherInfoData(e!)).toList(),
    );
  }

  ForecastDayInfoData mapWeatherInfoData(ForecastDayInfoResponseDto domain) {
    return ForecastDayInfoData(
      date: domain.date,
      dateEpoch: domain.dateEpoch,
      day: domain.day != null ? mapForecastDayData(domain.day!) : null,
      astro: domain.astro != null ? mapForecastAstroData(domain.astro!) : null,
      hour: domain.hour?.map((e) => mapForecastHourInfoData(e!)).toList(),
    );
  }

  ForecastHourInfoData mapForecastHourInfoData(
      ForecastHourInfoResponseDto dto) {
    return ForecastHourInfoData(
      timeEpoch: dto.timeEpoch,
      time: dto.time,
      tempC: dto.tempC,
      tempF: dto.tempF,
      isDay: dto.isDay,
      condition: dto.condition != null ? mapForecastHourInfoConditionData(dto.condition!) : null,
      windMph: dto.windMph,
      windKph: dto.windKph,
      windDegree: dto.windDegree,
      windDir: dto.windDir,
      pressureMb: dto.pressureMb,
      pressureIn: dto.pressureIn,
      precipMm: dto.precipMm,
      precipIn: dto.precipIn,
      snowCm: dto.snowCm,
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
      willItRain: dto.willItRain,
      chanceOfRain: dto.chanceOfRain,
      willItSnow: dto.willItSnow,
      chanceOfSnow: dto.chanceOfSnow,
      visKm: dto.visKm,
      visMiles: dto.visMiles,
      gustMhp: dto.gustMhp,
      gustKph: dto.gustKph,
      uv: dto.uv,
    );
  }

  ForecastHourInfoConditionData mapForecastHourInfoConditionData(
      ForecastHourInfoConditionResponseDto domain) {
    return ForecastHourInfoConditionData(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }

  ForecastAstroData mapForecastAstroData(ForecastAstroResponseDto dto) {
    return ForecastAstroData(
      sunrise: dto.sunrise,
      sunset: dto.sunset,
      moonrise: dto.moonrise,
      moonset: dto.moonset,
      moonPhase: dto.moonPhase,
      moonIllumination: dto.moonIllumination,
      isMoonUp: dto.isMoonUp,
      isSunUp: dto.isSunUp,
    );
  }

  ForecastDayData mapForecastDayData(ForecastDayResponseDto dto) {
    return ForecastDayData(
      maxtempC: dto.maxtempC,
      maxtempF: dto.maxtempF,
      mintempC: dto.mintempC,
      mintempF: dto.mintempF,
      avgtempC: dto.avgtempC,
      avgtempF: dto.avgtempF,
      maxwindMph: dto.maxwindMph,
      maxwindKph: dto.maxwindKph,
      totalprecipMm: dto.totalprecipMm,
      totalprecipIn: dto.totalprecipIn,
      totalsnowCm: dto.totalsnowCm,
      avgvisKm: dto.avgvisKm,
      avgvisMiles: dto.avgvisMiles,
      avghumidity: dto.avghumidity,
      dailyWillItRain: dto.dailyWillItRain,
      dailyChanceOfRain: dto.dailyChanceOfRain,
      dailyWillItSnow: dto.dailyWillItSnow,
      dailyChanceOfSnow: dto.dailyChanceOfSnow,
      condition: dto.condition != null
          ? mapForecastDayConditionData(dto.condition!)
          : null,
      uv: dto.uv,
    );
  }

  // ForecastDayData
  ForecastDayConditionData mapForecastDayConditionData(
      ForecastDayConditionResponseDto domain) {
    return ForecastDayConditionData(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }

  ForecastCurrentData _mapForecastCurrentData(ForecastCurrentResponseDto dto) {
    return ForecastCurrentData(
      lastUpdatedEpoch: dto.lastUpdatedEpoch,
      lastUpdated: dto.lastUpdated,
      tempC: dto.tempC,
      tempF: dto.tempF,
      isDay: dto.isDay,
      condition: dto.condition != null
          ? mapWeatherConditionData(dto.condition!)
          : null,
      windMph: dto.windMph,
      windKph: dto.windKph,
      windDegree: dto.windDegree,
      windDir: dto.windDir,
      pressureMb: dto.pressureMb,
      pressureIn: dto.pressureIn,
      precipMm: dto.precipMm,
      precipIn: dto.pressureIn,
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

  ForecastConditionData mapWeatherConditionData(
      ForecastConditionResponseDto domain) {
    return ForecastConditionData(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }
}
