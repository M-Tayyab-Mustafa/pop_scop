import 'package:flutter/material.dart';
import 'package:pop_scop/screen/one.dart';

class Routes {
  static Route _route(Widget screen) {
    return MaterialPageRoute(builder: (context) => screen);
  }

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OneScreen.screenName:
        return _route(const OneScreen());
      default:
        return _route(const ErrorScreen());
    }
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  static const String screenName = 'error-screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Something went wrong!')),
    );
  }
}
