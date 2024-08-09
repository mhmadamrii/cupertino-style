import 'package:cupertino_style/screens/home/home_screen.dart';
import 'package:cupertino_style/screens/root_screen.dart';
import 'package:cupertino_style/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String root = '/';
  static const String home = '/home';
  static const String setting = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => RootScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case setting:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return MaterialPageRoute(builder: (_) => SettingsScreen());
    }
  }
}
