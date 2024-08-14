
import 'package:app_weather/features/search/data/models/weather_current_response_dto.dart';
import 'package:app_weather/features/search/data/repository/city_search_repository_impl.dart';
import 'package:app_weather/features/search/domain/city_search_interactor.dart';
import 'package:app_weather/features/search/domain/repository/city_search_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/weather_data.dart';

part 'city_search_event.dart';

part 'city_search_state.dart';

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {

  final searchController = TextEditingController();
  final CitySearchInteractor _citySearchInteractor = CitySearchInteractor();


  CitySearchBloc() : super(const CitySearchState(isLoading: false)) {
    on<CitySearchDataFetched>(_onCitySearchDataFetched);
  }

  void _onCitySearchDataFetched(
    CitySearchDataFetched event,
    Emitter<CitySearchState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _citySearchInteractor.fetchCurrentWeatherData(query: searchController.text);
    debugPrint(data.toString());

    emit(state.copyWith(data: data, isLoading: false));
  }
}
