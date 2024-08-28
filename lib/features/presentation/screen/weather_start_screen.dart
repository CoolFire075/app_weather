import 'package:app_weather/main.dart';
import 'package:flutter/material.dart';

class WeatherStartScreen extends StatelessWidget {
  const WeatherStartScreen({super.key});

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
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/image_sun_main_screen.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Weather',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 245.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ForeCasts',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 64.0, bottom: 120),
          child: Container(
            width: 304,
            height: 72,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              backgroundColor: Colors.yellow[700],
              child: Text(
                'Get Start',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
