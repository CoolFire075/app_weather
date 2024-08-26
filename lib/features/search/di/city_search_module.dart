import 'package:app_weather/core/di/main_module.dart';
import 'package:app_weather/features/search/data/api/city_search_api.dart';
import 'package:app_weather/features/search/data/mappers/city_search_mapper.dart';
import 'package:app_weather/features/search/data/repository/city_search_repository_impl.dart';
import 'package:app_weather/features/search/domain/city_search_interactor.dart';
import 'package:app_weather/features/search/domain/repository/city_search_repository.dart';
import 'package:app_weather/features/search/presentation/bloc/city_search_bloc.dart';
import 'package:app_weather/features/search/presentation/mappers/weather_model_mapper.dart';

void initCitySearchModule() {
  getIt.registerLazySingleton(() => CitySearchApi());
  getIt.registerFactory(() => CitySearchMapper());
  getIt.registerFactory<CitySearchRepository>(
      () => CitySearchRepositoryImpl(getIt(), getIt()));
  getIt.registerFactory(() => CitySearchInteractor(repository: getIt()));
  getIt.registerFactory(() => WeatherModelMapper());
  getIt.registerFactory(() => CitySearchBloc(getIt(), getIt()));
}
