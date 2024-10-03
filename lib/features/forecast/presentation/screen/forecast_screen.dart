import 'package:app_weather/features/forecast/presentation/bloc/forecast_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/main_module.dart';
import '../../data/api/forecast_api.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

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
        create: (context) => getIt<ForecastBloc>(),
        child: MyHomePage(),
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
  final ForecastApi api = ForecastApi();
  final ForecastApi forecastApi = ForecastApi();
  final searchController = TextEditingController();

  @override
  String text = '123';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: Text('Forecast'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [],
      ),
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
                      final data = await api.fetchForecastData(query: searchController.toString());
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
            Row(
              children: [
                BlocBuilder<ForecastBloc, ForecastState>(
                  builder: (context, state) {
                    return Text('${state.data?.current?.tempC}');
                  },
                )
              ],
            ),
            Row(
              children: [
                BlocBuilder<ForecastBloc, ForecastState>(
                  builder: (context, state) {
                    return Text('${state.data?.forecast}');
                  },
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: _SearchButton(),
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ForecastBloc>();

    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FloatingActionButton(
                onPressed: () => bloc.add(ForecastDataFetched()),
                child: const Icon(Icons.search_rounded),
              ),
            ],
          ),
        );
      },
    );
  }
}
