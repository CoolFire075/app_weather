class WeatherLocationResponseDto {
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? lon;
  final String? tzId;
  final int? localtimeEpoch;
  final String? localtime;

  WeatherLocationResponseDto({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory WeatherLocationResponseDto.fromJson(Map<String, dynamic> json) {
    return WeatherLocationResponseDto(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        lat: json['lat'],
        lon: json['lon'],
        tzId: json['tz_id'],
        localtimeEpoch: json['localtime_epoch'],
        localtime: json['localtime']);
  }

  // factory WeatherDataResponseDto.fromJson(Map<String, dynamic> json) {
  //     return WeatherDataResponseDto(
  //         location: WeatherLocationResponseDto.fromJson(json['location']),
  //         current: WeatherCurrentResponseDto.fromJson(json['current']));
  //   }

  @override
  String toString() {
    return 'WeatherLocationResponseDto{name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeEpoch: $localtimeEpoch, localtime: $localtime}';
  }

  @override
  List<Object?> get props => [
        name,
        region,
        country,
        lat,
        lon,
        tzId,
        localtimeEpoch,
        localtime,
      ];
}
