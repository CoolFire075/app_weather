
import 'package:app_weather/features/forecast/domain/models/forecast_info_data.dart';

import '../../domain/repository/forecast_repository.dart';
import '../api/forecast_api.dart';
import '../mappers/forecast_mapper.dart';

class ForecastRepositoryImpl implements ForecastRepository {
  final ForecastApi _forecastApi;
  final ForecastMapper _forecastMapper;

  ForecastRepositoryImpl(this._forecastApi, this._forecastMapper);

  @override
  Future<ForecastInfoData?> fetchCurrentWeatherData({required String query}) async {
    final data = await _forecastApi.fetchForecastData(query: query);
    if (data == null) return null;
    return _forecastMapper.mapForecastData(data);

    return _forecastApi.fetchForecastData(query: query).then((value) =>
        value != null ? _forecastMapper.mapForecastData(value) : null);
  }

  @override
  Future<ForecastInfoData?> fetchForecastData({required String query}) {
    // TODO: implement fetchForecastData
    throw UnimplementedError();
  }
}
