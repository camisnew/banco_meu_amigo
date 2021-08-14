import 'package:flutter/material.dart';
import 'app_routes.dart';

class MyApp extends StatelessWidget {

  static final MyApp _instance = MyApp._internal();

  MyApp._internal();

  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: getAppRoutes().getRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Amigo - NoBanco',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }

  AppRoutes getAppRoutes() => AppRoutes();
}