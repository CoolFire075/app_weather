import 'package:flutter/material.dart';
import '../../search/presentation/models/weather_model.dart';

class SecondMainScreen extends StatelessWidget {
  const SecondMainScreen({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    final notNullablePressure = weatherModel.current?.pressureMb ?? 0;
    final pressure = notNullablePressure * 0.75;
    final notNullableWindSpeed = weatherModel.current?.windKph ?? 0;
    final windSpeed = notNullableWindSpeed / 3.6;
    return Stack(children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.network(
          'https://w0.peakpx.com/wallpaper/884/834/HD-wallpaper-spring-clouds-green-hill-natural-nature-spring-weather-tree.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          children: [
            _TemperatureWidget(weatherModel: weatherModel),
            _FeelsLikeWidget(weatherModel: weatherModel),
            _HeatIndexWidget(weatherModel: weatherModel),
            _HumidityWidget(weatherModel: weatherModel),
            _PressureWidget(pressure: pressure),
            _CloudWidget(weatherModel: weatherModel),
            _WindSpeedKphWidget(weatherModel: weatherModel),
            _WindSpeedMpsWidget(windSpeed: windSpeed),
          ],
        ),
      ),
    ]);
  }
}
class _WindSpeedMpsWidget extends StatelessWidget {
  const _WindSpeedMpsWidget({
    super.key,
    required this.windSpeed,
  });

  final windSpeed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.wind_power,
                  size: 50,
                  color: Colors.blue,
                ),
                Text(
                  'Wind speed: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${windSpeed.toStringAsFixed(2)}m/sec',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
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
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.wind_power,
                  size: 50,
                  color: Colors.blue,
                ),
                Text(
                  'Wind speed: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${weatherModel.current?.windKph}km/h',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
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
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.cloud,
                  size: 50,
                  color: Colors.blue,
                ),
                Text(
                  'Clouds cover sky: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${weatherModel.current?.cloud}%',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}

class _PressureWidget extends StatelessWidget {
  const _PressureWidget({
    super.key,
    required this.pressure,
  });

  final double pressure;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.compress,
                  size: 50,
                  color: Colors.yellow,
                ),
                Text(
                  'Pressure: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${pressure.toInt()}мб',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
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
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.opacity,
                  color: Colors.blue,
                  size: 50,
                ),
                Text(
                  'Humidity: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${weatherModel.current?.humidity}%',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
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
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.sunny,
                  size: 50,
                  color: Colors.yellow,
                ),
                Text(
                  'Heat index: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${weatherModel.current?.heatindexC}',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
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
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.pan_tool,
                  size: 50,
                  color: Colors.yellow,
                ),
                Text(
                  'Feels like: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${weatherModel.current?.feelslikeC}°C',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
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
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.thermostat,
                  size: 50,
                  color: Colors.red,
                ),
                Text(
                  'Temperature: ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${weatherModel.current?.tempC}°C',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
