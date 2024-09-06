import 'package:app_weather/features/search/domain/repository/city_search_repository.dart';

import 'models/weather_data.dart';

class CitySearchInteractor{

  final CitySearchRepository _repository;

  CitySearchInteractor({required CitySearchRepository repository}) : _repository = repository;

  Future<WeatherData?> fetchCurrentWeatherData({required String query})async{
    return _repository.fetchCurrentWeatherData(query: query);
  }

}