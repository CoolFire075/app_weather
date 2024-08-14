part of 'city_search_bloc.dart';

class CitySearchState extends Equatable {
  final WeatherData? data;
  final bool isLoading;

  const CitySearchState({required this.isLoading, this.data});

  CitySearchState copyWith({
    WeatherData? data,
    bool? isLoading,
  }) {
    return CitySearchState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [data, isLoading];
}
