import 'package:flutter/material.dart';
import 'package:pop_scop/screen/one.dart';
import 'package:pop_scop/utils/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: OneScreen.screenName,
    );
  }
}
