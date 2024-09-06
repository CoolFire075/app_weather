import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/city_search_bloc.dart';

class CitySearchPageWidget extends StatelessWidget {
  const CitySearchPageWidget({super.key, required this.icon, this.text, required this.color});

  final IconData icon;
  final String? text;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    if (text == null) return const SizedBox();
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(40)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: color,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<CitySearchBloc, CitySearchState>(
                      builder: (context, state) {
                        return Text(
                          text!,
                          style: const TextStyle(fontSize: 30),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeatherSecondScreenWidget extends StatelessWidget {
  const WeatherSecondScreenWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.fieldName,
  });

  final IconData icon;
  final String fieldName;
  final String text;
  final MaterialColor color;

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
                  Icon(
                    icon,
                    size: 50,
                    color: color,
                  ),
                  Text(
                    fieldName,
                    style: const TextStyle(fontSize: 30),
                  ),
                  Text(
                    text,
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
