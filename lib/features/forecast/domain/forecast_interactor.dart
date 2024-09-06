import 'package:app_weather/features/forecast/domain/repository/forecast_repository.dart';

import 'models/forecast_info_data.dart';

class ForecastInteractor {
  final ForecastRepository _repository;

  ForecastInteractor({required ForecastRepository repository}) : _repository = repository;

  Future<ForecastInfoData?> fetchForecastData({required String query})async{
    return _repository.fetchForecastData(query: query);
  }
}
