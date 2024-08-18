import 'package:equatable/equatable.dart';

class WeatherConditionData extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  WeatherConditionData({
    required this.text,
    required this.icon,
    required this.code,
  });

  @override
  String toString() {
    return '{text: $text, icon: $icon, code: $code}';
  }

  @override
  List<Object?> get props => [
        code,
        text,
        icon,
      ];
}
