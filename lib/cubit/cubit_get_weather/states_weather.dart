
import '../../models/weather_model.dart';

class WeatherState{}

class WeatherInitial extends WeatherState{}

class WeatherLoaded extends WeatherState{
  final WeatherModel weatherModel;
  WeatherLoaded({required this.weatherModel});
}

class WeatherFailed extends WeatherState{}


