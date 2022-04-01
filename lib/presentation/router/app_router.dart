import 'package:flutter/material.dart';
import 'package:trading_wallet/presentation/screens/home/home.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      default:
        return null;
    }
  }
}
