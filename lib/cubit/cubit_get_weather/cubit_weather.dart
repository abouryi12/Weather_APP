import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit_get_weather/states_weather.dart';

import '../../models/weather_model.dart';
import '../../services/weather_services.dart';

class CubitState extends Cubit<WeatherState> {
  CubitState() :super(WeatherInitial());
  WeatherModel? weatherModel;

  getWeather(String city) async {
    try {
      weatherModel= await WeatherServices(dio: Dio()).getWeather(city);
      emit(WeatherLoaded(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailed());
    }
  }
}