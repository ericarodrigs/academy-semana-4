import 'package:flutter/material.dart';
import 'package:navigation/src/pages/details_page.dart';
import 'package:navigation/src/pages/home_page.dart';
import 'package:navigation/src/pages/login_page.dart';
import 'pages/error_page.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case DetailsPage.routeName:
        return MaterialPageRoute(builder: (context) => const DetailsPage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
