import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:banco_meu_amigo/view/views.dart';

class AppRoutes {

  static const String APP_ROUTE_HOME = "/home";
  static const String APP_ROUTE_AMIGO_CARD = "/amigo_card";
  static const String APP_ROUTE_AMIGO_INFO = "/amigo_info";

  Route getRoutes(RouteSettings routeSettings) {

    switch(routeSettings.name) {

      case APP_ROUTE_HOME: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => MyHomePage(title: "Home")
        );
      }

      case APP_ROUTE_AMIGO_INFO: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => AmigoInfo(title: 'Sobre AmigoCard',)
        );
      }

      case APP_ROUTE_AMIGO_CARD: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => AmigoCard(title: 'Seu Amigo',)
        );
      }

      default: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => MyHomePage(title: "Home"),
          fullscreenDialog: true
        );
      }
    }
  }

}