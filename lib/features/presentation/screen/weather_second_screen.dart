import 'package:flutter/material.dart';
import '../../search/presentation/models/weather_model.dart';
import '../../search/presentation/widgets/weather_info_widget.dart';

class SecondMainScreen extends StatelessWidget {
  const SecondMainScreen({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(
          'https://e1.pxfuel.com/desktop-wallpaper/479/194/desktop-wallpaper-22-iphone-for-people-who-live-on-cloud-9-aesthetic-for-iphone-thumbnail.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '${weatherModel.location?.name}',
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          children: [
            _LocalTimeWidget(weatherModel: weatherModel),
            _TemperatureWidget(weatherModel: weatherModel),
            _FeelsLikeWidget(weatherModel: weatherModel),
            _HeatIndexWidget(weatherModel: weatherModel),
            _HumidityWidget(weatherModel: weatherModel),
            _PressureWidget(weatherModel: weatherModel),
            _CloudWidget(weatherModel: weatherModel),
            _WindSpeedKphWidget(weatherModel: weatherModel),
            _PrecipitationAmountWidget(weatherModel: weatherModel),
          ],
        ),
      ),
    ]);
  }
}

class _PrecipitationAmountWidget extends StatelessWidget {
  const _PrecipitationAmountWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.cloudy_snowing,
      text: '${weatherModel.current?.precipMm}',
      color: Colors.blue,
      fieldName: 'Precip amount: ',
    );
  }
}

class _LocalTimeWidget extends StatelessWidget {
  const _LocalTimeWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.timer,
      text: '${weatherModel.location?.localtime}',
      color: Colors.yellow,
      fieldName: 'Time: ',
    );
  }
}

class _WindSpeedKphWidget extends StatelessWidget {
  const _WindSpeedKphWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.wind_power,
      text: '${weatherModel.current?.windKph}',
      color: Colors.blue,
      fieldName: 'Wind speed: ',
    );
  }
}

class _CloudWidget extends StatelessWidget {
  const _CloudWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.cloud,
      text: '${weatherModel.current?.cloud}',
      color: Colors.blue,
      fieldName: 'Clouds cover sky: ',
    );
  }
}

class _PressureWidget extends StatelessWidget {
  const _PressureWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.compress,
      text: '${weatherModel.current?.pressureMb}',
      color: Colors.yellow,
      fieldName: 'Pressure: ',
    );
  }
}

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.opacity,
      text: '${weatherModel.current?.humidity}',
      color: Colors.blue,
      fieldName: 'Humidity: ',
    );
  }
}

class _HeatIndexWidget extends StatelessWidget {
  const _HeatIndexWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.sunny,
      text: '${weatherModel.current?.heatindexC}',
      color: Colors.yellow,
      fieldName: 'Heat index: ',
    );
  }
}

class _FeelsLikeWidget extends StatelessWidget {
  const _FeelsLikeWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.pan_tool,
      text: '${weatherModel.current?.feelslikeC}',
      color: Colors.yellow,
      fieldName: 'Feels like: ',
    );
  }
}

class _TemperatureWidget extends StatelessWidget {
  const _TemperatureWidget({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return WeatherSecondScreenWidget(
      icon: Icons.thermostat,
      text: '${weatherModel.current?.tempC}',
      color: Colors.red,
      fieldName: 'Temperature: ',
    );
  }
}
