import 'package:app_weather/core/di/main_module.dart';
import 'package:app_weather/features/presentation/screen/weather_start_screen.dart';
import 'package:app_weather/features/search/data/api/city_search_api.dart';
import 'package:app_weather/features/search/presentation/bloc/city_search_bloc.dart';
import 'package:app_weather/features/search/presentation/screen/city_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initMainModule();
  runApp(const StartScreen());
  // runApp(const StartScreen());
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WeatherStartScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => getIt<CitySearchBloc>(),
        child: SearchWeatherPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CitySearchApi api = CitySearchApi();
  final CitySearchApi weatherSearchApi = CitySearchApi();
  final searchController = TextEditingController();

  @override
  String text = '123';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(labelText: 'Search'),
            ),
            Center(
              child: Text(text),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 300.0, top: 200),
                  child: ElevatedButton(
                    onPressed: () async {
                      final data = await api.fetchCurrentWeatherData(
                          query: searchController.toString());
                      setState(() {
                        text = data.toString();
                      });
                      debugPrint('$data');
                    },
                    child: const Icon(
                      Icons.add_box,
                      size: 60,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
