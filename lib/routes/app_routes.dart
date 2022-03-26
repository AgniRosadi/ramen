import 'package:flutter/material.dart';
import 'package:ramen/main.dart';
import 'package:ramen/views/page/home.dart';

///Routing with defined name
class AppRoute {

  static const rMain = '/';
  static const rHome = '/home';

  /// Route list
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rMain:
        return _buildRoute(settings, const MainPage());
      case rHome:
        return _buildRoute(settings, const HomePage());


      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('Page not found : ${settings.name}')
              ),
            ));
    }
  }

  static MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }

}