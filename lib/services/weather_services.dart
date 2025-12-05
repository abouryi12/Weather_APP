import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String apiKey = "094bc7d780f14482b2d133352252410";
  final String baseUrl = "https://api.weatherapi.com/v1";

  WeatherServices({required this.dio});

  Future<WeatherModel> getWeather(String city) async {
    try {
      final Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$city",
      );
      Map<String, dynamic> jeson = response.data;
      return WeatherModel.fromJson(jeson);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw Exception("city not found");
      } else {
        throw Exception("something went wrong");
      }
    }
  }
}
