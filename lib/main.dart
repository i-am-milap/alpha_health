import 'package:alpha_health/screens/home.dart';
import 'package:alpha_health/screens/programmeDetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: _getRoute,
    );
  }

  Route _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _buildRoute(settings, Home());
      case '/detail':
        return _buildRoute(settings, ProgrammeDetail(settings.arguments));
      default:
        return _buildRoute(settings, Home());
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
