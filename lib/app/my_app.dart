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
      title: 'Trabalho 1n2',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }

  AppRoutes getAppRoutes() => AppRoutes();
}