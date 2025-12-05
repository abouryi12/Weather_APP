import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/search_screen.dart';
import 'package:weather_app/views/view_weather.dart';



import '../constants/dimension.dart';
import '../cubit/cubit_get_weather/cubit_weather.dart';
import '../cubit/cubit_get_weather/states_weather.dart';
import 'No_weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Variables.heightScreen(context) * 0.09,
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Text(
              "Weather",
              style: TextStyle(
                fontSize: Variables.heightScreen(context) * 0.04,

                color: Colors.white,
              ),
            ),
            SizedBox(width: Variables.widthScreen(context) * 0.45),

            IconButton(
               icon:Icon(Icons.search,color: Colors.white,size: Variables.heightScreen(context) * 0.04,),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return SearchScreen();
                 }));
               },
            ),
          ],
        ),
      ),
      body: BlocBuilder<CubitState,WeatherState>(
          builder: (context,state){
            if(state is WeatherInitial){
              return NoWeather();
            }
            else if(state is  WeatherLoaded ){
              return ViewWeather(weatherModel: state.weatherModel);
            }
            else {
              return Center(child:Text("Oops! We couldn't find this city 🌍🔎🏙️",
              style: TextStyle(
                fontSize: Variables.heightScreen(context) * 0.025,
                fontWeight: FontWeight.bold,
              ),
              ),
              );
            }


    },
      ),
    );
  }
}

