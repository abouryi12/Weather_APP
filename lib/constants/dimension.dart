import 'package:flutter/material.dart';

class Variables{
 static double heightScreen(BuildContext context)=> MediaQuery.of(context).size.height;
 static double widthScreen(BuildContext context)=> MediaQuery.of(context).size.width;

}