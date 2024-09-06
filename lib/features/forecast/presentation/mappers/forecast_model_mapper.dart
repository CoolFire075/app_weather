import 'package:app_weather/features/forecast/domain/models/forecast_condition_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_current_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_day_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_hour_info_condition_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_hour_info_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_info_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_list_data.dart';
import 'package:app_weather/features/forecast/domain/models/forecast_location_data.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_astro_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_condition_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_current_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_day_condition_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_day_info_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_day_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_hour_info_condition_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_hour_info_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_info_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_list_model.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_location_model.dart';

import '../../domain/models/forecast_astro_data.dart';
import '../../domain/models/forecast_day_condition_data.dart';
import '../../domain/models/forecast_day_info_data.dart';

class ForecastModelMapper {
  ForecastInfoModel mapForecastModel(ForecastInfoData domain) {
    return ForecastInfoModel(
        location: _mapForecastLocationModel(domain.location!),
        current: _mapForecastCurrentModel(domain.current!),
        forecast: _mapForecastListModel(domain.forecast!));
  }

  ForecastLocationModel _mapForecastLocationModel(
      ForecastLocationData domain) {
    return ForecastLocationModel(
      name: domain.name,
      region: domain.region,
      country: domain.country,
      lat: domain.lat,
      lon: domain.lon,
      tzId: domain.tzId,
      localtimeEpoch: domain.localtimeEpoch,
      localtime: domain.localtime,
    );
  }

  ForecastListModel _mapForecastListModel(ForecastListData domain) {
    return ForecastListModel(
      forecastday:
      domain.forecastday?.map((e) => mapForecastInfoModel(e!)).toList(),
    );
  }

  ForecastDayInfoModel mapForecastInfoModel(ForecastDayInfoData domain) {
    return ForecastDayInfoModel(
      date: domain.date,
      dateEpoch: domain.dateEpoch,
      day: domain.day != null ? mapForecastDayModel(domain.day!) : null,
      astro: domain.astro != null ? mapForecastAstroModel(domain.astro!) : null,
      hour: domain.hour?.map((e) => mapForecastHourInfoModel(e!)).toList(),
    );
  }

  ForecastHourInfoModel mapForecastHourInfoModel(
      ForecastHourInfoData domain) {
    return ForecastHourInfoModel(
      timeEpoch: domain.timeEpoch,
      time: domain.time,
      tempC: domain.tempC,
      isDay: domain.isDay,
      condition: domain.condition != null ? mapForecastHourInfoConditionModel(domain.condition!) : null,
      windKph: domain.windKph,
      windDegree: domain.windDegree,
      windDir: domain.windDir,
      pressureMb: domain.pressureMb,
      pressureIn: domain.pressureIn,
      precipMm: domain.precipMm,
      precipIn: domain.precipIn,
      snowCm: domain.snowCm,
      humidity: domain.humidity,
      cloud: domain.cloud,
      feelslikeC: domain.feelslikeC,
      windchillC: domain.windchillC,
      heatindexC: domain.heatindexC,
      dewpointC: domain.dewpointC,
      willItRain: domain.willItRain,
      chanceOfRain: domain.chanceOfRain,
      willItSnow: domain.willItSnow,
      chanceOfSnow: domain.chanceOfSnow,
      visKm: domain.visKm,
      gustKph: domain.gustKph,
      uv: domain.uv,
    );
  }

  ForecastHourInfoConditionModel mapForecastHourInfoConditionModel(
      ForecastHourInfoConditionData domain) {
    return ForecastHourInfoConditionModel(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }

  ForecastAstroModel mapForecastAstroModel(ForecastAstroData domain) {
    return ForecastAstroModel(
      sunrise: domain.sunrise,
      sunset: domain.sunset,
      moonrise: domain.moonrise,
      moonset: domain.moonset,
      moonPhase: domain.moonPhase,
      moonIllumination: domain.moonIllumination,
      isMoonUp: domain.isMoonUp,
      isSunUp: domain.isSunUp,
    );
  }

  ForecastDayModel mapForecastDayModel(ForecastDayData domain) {
    return ForecastDayModel(
      maxtempC: domain.maxtempC,
      mintempC: domain.mintempC,
      avgtempC: domain.avgtempC,
      maxwindKph: domain.maxwindKph,
      totalprecipMm: domain.totalprecipMm,
      totalprecipIn: domain.totalprecipIn,
      totalsnowCm: domain.totalsnowCm,
      avgvisKm: domain.avgvisKm,
      avghumidity: domain.avghumidity,
      dailyWillItRain: domain.dailyWillItRain,
      dailyChanceOfRain: domain.dailyChanceOfRain,
      dailyWillItSnow: domain.dailyWillItSnow,
      dailyChanceOfSnow: domain.dailyChanceOfSnow,
      condition: domain.condition != null
          ? mapForecastDayConditionModel(domain.condition!)
          : null,
      uv: domain.uv,
    );
  }

  // ForecastDayData
  ForecastDayConditionModel mapForecastDayConditionModel(
      ForecastDayConditionData domain) {
    return ForecastDayConditionModel(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }

  ForecastCurrentModel _mapForecastCurrentModel(ForecastCurrentData domain) {
    return ForecastCurrentModel(
      lastUpdatedEpoch: domain.lastUpdatedEpoch,
      lastUpdated: domain.lastUpdated,
      tempC: domain.tempC,
      isDay: domain.isDay,
      condition: domain.condition != null
          ? mapForecastConditionModel(domain.condition!)
          : null,
      windKph: domain.windKph,
      windDegree: domain.windDegree,
      windDir: domain.windDir,
      pressureMb: domain.pressureMb,
      pressureIn: domain.pressureIn,
      precipMm: domain.precipMm,
      precipIn: domain.pressureIn,
      humidity: domain.humidity,
      cloud: domain.cloud,
      feelslikeC: domain.feelslikeC,
      windchillC: domain.windchillC,
      heatindexC: domain.heatindexC,
      dewpointC: domain.dewpointC,
      visKm: domain.visKm,
      uv: domain.uv,
      gustKph: domain.gustKph,
    );
  }

  ForecastConditionModel mapForecastConditionModel(
      ForecastConditionData domain) {
    return ForecastConditionModel(
      text: domain.text,
      icon: domain.icon,
      code: domain.code,
    );
  }
}
