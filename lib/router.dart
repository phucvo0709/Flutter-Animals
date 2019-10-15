import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animals/views/home_screen.dart';
import 'package:flutter_animals/views/info_screen.dart';

const String homeViewRoute = '/';
const String infoViewRoute = '/info';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (_) => HomeScreen());
      break;
    case infoViewRoute:
      return MaterialPageRoute(builder: (_) => InfoScreen());
    default:
      return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
