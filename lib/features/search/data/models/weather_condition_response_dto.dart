class WeatherConditionResponseDto {
  final String? text;
  final String? icon;
  final int? code;

  WeatherConditionResponseDto({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory WeatherConditionResponseDto.fromJson(Map<String, dynamic> json) {
    return WeatherConditionResponseDto(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  @override
  String toString() {
    return '{text: $text, icon: $icon, code: $code}';
  }
}
