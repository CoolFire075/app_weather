part of 'forecast_bloc.dart';

class ForecastEvent extends Equatable{
  const ForecastEvent();

  @override
  List<Object?> get props => [];
}

class ForecastDataFetched extends ForecastEvent {}
