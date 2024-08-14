import 'dart:convert';

import 'package:app_weather/core/network/constants.dart';
import 'package:app_weather/features/search/data/models/weather_data_response_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';


class CitySearchApi {
  Future<WeatherDataResponseDto?> fetchCurrentWeatherData(
      {required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/current.json?key=${NetworkConstants
            .apiKey}&q=$query&aqi=no');

    final response = await get(url);

    debugPrint('response: $response');

    if (response.statusCode == 200) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return WeatherDataResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}
