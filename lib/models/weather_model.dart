class WeatherModel {
  final String cityName;
  final double temp;
  final String weatherState;
  final String icon;
  final DateTime data;
  final double min;
  final double max;

  WeatherModel(
      {required this.cityName, required this.temp, required this.weatherState, required this.icon, required this.data, required this.min, required this.max});

  factory WeatherModel.fromJson(json){
    return WeatherModel(
        cityName: json["location"]["name"],
        temp: json["current"]["temp_c"].toDouble(),
        weatherState: json["current"]["condition"]["text"],
        icon: json["current"]["condition"]["icon"] ,
        data: DateTime.parse(json["current"]["last_updated"]),
        min: json["forecast"]["forecastday"][0]["day"]["mintemp_c"].toDouble(),
        max: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"].toDouble() );
  }
}