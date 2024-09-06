import 'package:app_weather/features/forecast/domain/forecast_interactor.dart';
import 'package:app_weather/features/forecast/presentation/models/forecast_info_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../mappers/forecast_model_mapper.dart';

part 'forecast_event.dart';

part 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  final searchController = TextEditingController();
  final ForecastInteractor _forecastInteractor;
  final ForecastModelMapper _forecastModelMapper;

  ForecastBloc(this._forecastInteractor, this._forecastModelMapper)
      : super(const ForecastState(isLoading: false)) {
    on<ForecastDataFetched>(_onForecastDataFetched);
  }

  void _onForecastDataFetched(
    ForecastDataFetched event,
    Emitter<ForecastState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _forecastInteractor.fetchForecastData(
        query: searchController.text);
    final model = data != null ? _forecastModelMapper.mapForecastModel(data) : null;
    debugPrint(data.toString());

    emit(state.copyWith(data: model, isLoading: false));
  }
}
