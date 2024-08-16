enum WeatherConditionState {
  sunny(code: 1000, weatherIcon: 'assets/icons/ic_clear_day.svg'),
  partlyCloudy(code: 1003, weatherIcon: 'assets/icons/ic_partly_cloudy_day.svg'),
  cloudy(code: 1006, weatherIcon: 'assets/icons/ic_cloudy.svg'),
  overcast(code: 1009, weatherIcon: 'assets/icons/ic_overcast.svg'),
  mist(code: 1030, weatherIcon: 'assets/icons/ic_overcast.svg'),
  patchyRainPossible(code: 1063, weatherIcon: 'assets/icons/ic_showers.svg'),
  patchySnowPossible(code: 1066, weatherIcon: 'assets/icons/ic_snow.svg'),
  patchySleetPossible(code: 1069, weatherIcon: 'assets/icons/ic_sleet.svg'),


  unknown(code: 0, weatherIcon: '');

  const WeatherConditionState({required this.code, required this.weatherIcon});

  final int code;
  final String weatherIcon;
}
