import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/dimension.dart';
import '../cubit/cubit_get_weather/cubit_weather.dart';
import '../services/weather_services.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        toolbarHeight: Variables.heightScreen(context) * 0.09,
        title: Text("Search a city",style: TextStyle(
            fontSize: Variables.heightScreen(context) * 0.035),
         ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 30),
        child: Center(
          child: TextField(
            onSubmitted: (value)async{
              await BlocProvider.of<CubitState>(context).getWeather(value);
              Navigator.pop(context);

            },
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: (){},

              ),
              hintText: "Enter City Name",
              label: Text("Search"),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Variables.heightScreen(context) * 0.02),

              ),
            ),
          ),
        ),
      ),
    );
  }
}