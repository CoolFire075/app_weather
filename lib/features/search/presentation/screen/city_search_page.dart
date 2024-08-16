import 'package:app_weather/features/search/presentation/bloc/city_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: _Body(),
      ),
      floatingActionButton: _SearchButton(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        }
        return ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _SearchTextField(),
            ),
              _SearchWeatherIcon(),
            _SearchIcons(),
            _SearchText(),
            // _SearchText2(),
          ],
        );
      },
    );
  }
}

class _SearchIcons extends StatelessWidget {
  const _SearchIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 150,
          height: 100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CitySearchBloc, CitySearchState>(
                  builder: (context, state) {
                    return Text(
                      '${state.data?.current?.tempC}',
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
                Text(
                  '°C',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                // SvgPicture.asset(
                //   'assets/icons/ic_snow.svg',
                //   width: 70,
                // ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(40)),
        ),
      ],
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return FloatingActionButton(
      onPressed: () => bloc.add(CitySearchDataFetched()),
      child: Icon(Icons.search_rounded),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();
    return TextField(
      controller: bloc.searchController,
      decoration: InputDecoration(
        labelText: 'Search',
      ),
    );
  }
}

class _SearchText extends StatelessWidget {
  const _SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Text(
          state.data?.toString() ?? '',
          style: TextStyle(fontSize: 20),
        );
      },
    );
  }
}

class _SearchWeatherIcon extends StatelessWidget {
  const _SearchWeatherIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlocBuilder<CitySearchBloc, CitySearchState>(
          builder: (context, state) {
            final path = state.data?.current?.condition.weatherIcon;
            if (path == null || path.isEmpty) {
              return const SizedBox();
            }
            return SvgPicture.asset(
              path,
              width: 150,
            );
          },
        )
      ],
    );
  }
}

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

