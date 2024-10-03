import 'dart:convert';

import 'package:app_weather/features/forecast/data/models/forecast_info_response_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../../../../core/network/constants.dart';


class ForecastApi {
  Future<ForecastInfoResponseDto?> fetchForecastData(
      {required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.forecastBaseUrl}/forecast.json?key=${NetworkConstants
            .apiKey}&q=$query&days=10&aqi=no&alerts=no');

    final response = await get(url);

    debugPrint('response: $response');

    if (response.statusCode == 200) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return ForecastInfoResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}
