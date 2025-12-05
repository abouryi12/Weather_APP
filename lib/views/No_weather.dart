import 'package:flutter/material.dart';

import '../constants/dimension.dart';

class NoWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Center(
        child: Text(
          "there is no weather 😔 start searching now 🔍",
          style: TextStyle(
            fontSize: Variables.heightScreen(context) * 0.03,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
