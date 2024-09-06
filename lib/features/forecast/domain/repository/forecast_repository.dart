import '../models/forecast_info_data.dart';

abstract class ForecastRepository {
  Future<ForecastInfoData?> fetchForecastData({required String query});

}
