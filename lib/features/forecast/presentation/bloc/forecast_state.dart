part of 'forecast_bloc.dart';

class ForecastState extends Equatable {
  final ForecastInfoModel? data;
  final bool isLoading;

  const ForecastState({this.data, required this.isLoading});

  ForecastState copyWith({
    ForecastInfoModel? data,
    bool? isLoading,
  }) {
    return ForecastState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
      ];
}
