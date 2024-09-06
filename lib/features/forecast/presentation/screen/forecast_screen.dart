import 'package:app_weather/features/forecast/presentation/bloc/forecast_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/main_module.dart';

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
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
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
        child: Column(
          children: [
            Row(
              children: [
                BlocBuilder<ForecastBloc, ForecastState>(
                  builder: (context, state) {
                    return Text("${state.data?.location?.name}");
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
