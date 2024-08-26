import 'package:app_weather/features/presentation/screen/weather_second_screen.dart';
import 'package:app_weather/features/search/presentation/bloc/city_search_bloc.dart';
import 'package:app_weather/features/search/presentation/widgets/weather_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
        return Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                'https://e1.pxfuel.com/desktop-wallpaper/479/194/desktop-wallpaper-22-iphone-for-people-who-live-on-cloud-9-aesthetic-for-iphone-thumbnail.jpg',
                fit: BoxFit.cover,
              ),
            ),
            _MainScreen(),
          ],
        );
      },
    );
  }
}

class _MainScreen extends StatelessWidget {
  const _MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: _SearchTextField(),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _LocationCityNameText(),
                _LocalTimeWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _TempText(),
                _SearchWeatherIcon(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _TempIcon(),
                _HumidityIcon(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _PressureWidget(),
                  _CloudCoveredSkyPercent(),
                ],
              ),
            ),
          ],
        ),
        _LocationText(),
      ],
    );
  }
}

class _LocalTimeWidget extends StatelessWidget {
  const _LocalTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text(
            '${state.data?.location?.localtime}',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      },
    );
  }
}

class _CloudCoveredSkyPercent extends StatelessWidget {
  const _CloudCoveredSkyPercent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return CitySearchPageWidget(
            icon: Icons.cloud,
            text: '${state.data?.current!.cloud}',
            color: Colors.blue);
      },
    );
  }
}

class _PressureWidget extends StatelessWidget {
  const _PressureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return CitySearchPageWidget(
          icon: Icons.compress,
          text: '${state.data?.current?.pressureMb}',
          color: Colors.yellow,
        );
      },
    );
  }
}

class _LocationCityNameText extends StatelessWidget {
  const _LocationCityNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              Text(
                '${state.data?.location?.name}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TempText extends StatelessWidget {
  const _TempText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Row(
          children: [
            Text(
              '${state.data?.current?.tempC}',
              style: TextStyle(color: Colors.white, fontSize: 70),
            ),
          ],
        );
      },
    );
  }
}

class _TempIcon extends StatelessWidget {
  const _TempIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return CitySearchPageWidget(
          icon: Icons.pan_tool,
          text: '${state.data?.current?.feelslikeC}',
          color: Colors.yellow,
        );
      },
    );
  }
}

class _HumidityIcon extends StatelessWidget {
  const _HumidityIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return CitySearchPageWidget(
          icon: Icons.opacity,
          text: '${state.data?.current?.humidity}',
          color: Colors.blue,
        );
      },
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: FloatingActionButton(
                onPressed: () {
                  final data = state.data;
                  if (data == null) return;
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          SecondMainScreen(weatherModel: data),
                    ),
                  );
                },
                child: Icon(Icons.add),
              ),
            ),
            FloatingActionButton(
              onPressed: () => bloc.add(CitySearchDataFetched()),
              child: Icon(Icons.search_rounded),
            ),
          ],
        );
      },
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

class _LocationText extends StatelessWidget {
  const _LocationText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'City: ${state.data?.location?.name.toString() ?? ''}',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Region: ${state.data?.location?.region.toString() ?? ''}',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Country: ${state.data?.location?.country.toString() ?? ''}',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
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
