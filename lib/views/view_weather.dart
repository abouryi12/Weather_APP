import 'package:flutter/material.dart';

import '../constants/dimension.dart';
import '../models/weather_model.dart';

class ViewWeather extends StatelessWidget {
  final WeatherModel weatherModel;

  const ViewWeather({required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weatherModel.cityName,
          style: TextStyle(
            fontSize: Variables.heightScreen(context) * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("Updated at : ${weatherModel.data.hour}"),
        SizedBox(height: Variables.heightScreen(context) * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https:${weatherModel.icon}"),
            SizedBox(width: Variables.widthScreen(context) * 0.15),
            Text(
              "${weatherModel.temp.round()}°C",
              style: TextStyle(
                fontSize: Variables.heightScreen(context) * 0.04,
              ),
            ),
            SizedBox(width: Variables.widthScreen(context) * 0.15),
            Column(
              children: [
                Text(
                  "Max: ${weatherModel.max.round()}",
                  style: TextStyle(
                    fontSize: Variables.heightScreen(context) * 0.017,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Min: ${weatherModel.min.round()}",
                  style: TextStyle(
                    fontSize: Variables.heightScreen(context) * 0.017,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          weatherModel.weatherState!,
          style: TextStyle(
            fontSize: Variables.heightScreen(context) * 0.035,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: Variables.heightScreen(context) * 0.15),
      ],
    );
  }
}
