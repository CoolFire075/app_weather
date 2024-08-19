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
      // SizedBox(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: Image.network(
      //     'https://w0.peakpx.com/wallpaper/884/834/HD-wallpaper-spring-clouds-green-hill-natural-nature-spring-weather-tree.jpg',
      //     fit: BoxFit.cover,
      //   ),
      // ),
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
            _PressureWidget(pressure: pressure),
            _CloudWidget(weatherModel: weatherModel),
            _WindSpeedKphWidget(weatherModel: weatherModel),
            _WindSpeedMpsWidget(windSpeed: windSpeed),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.cloudy_snowing,
                    size: 40,
                    color: Colors.blue,
                  ),
                  const Text(
                    'Precip amount: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.precipMm}мм',
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.timer,
                    size: 40,
                  ),
                  const Text(
                    'Local time: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.location?.localtime}',
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WindSpeedMpsWidget extends StatelessWidget {
  const _WindSpeedMpsWidget({
    super.key,
    required this.windSpeed,
  });

  final double windSpeed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.wind_power,
                    size: 50,
                    color: Colors.blue,
                  ),
                  const Text(
                    'Wind speed: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${windSpeed.toStringAsFixed(2)}m/sec',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.wind_power,
                    size: 50,
                    color: Colors.blue,
                  ),
                  const Text(
                    'Wind speed: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.windKph}km/h',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.cloud,
                    size: 50,
                    color: Colors.blue,
                  ),
                  const Text(
                    'Clouds cover sky: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.cloud}%',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.compress,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  const Text(
                    'Pressure: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${pressure.toInt()}мб',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.opacity,
                    color: Colors.blue,
                    size: 50,
                  ),
                  const Text(
                    'Humidity: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.humidity}%',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.sunny,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  const Text(
                    'Heat index: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.heatindexC}',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.pan_tool,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  const Text(
                    'Feels like: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.feelslikeC}°C',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              border: Border.all(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.thermostat,
                    size: 50,
                    color: Colors.red,
                  ),
                  const Text(
                    'Temperature: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${weatherModel.current?.tempC}°C',
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
