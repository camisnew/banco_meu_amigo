import 'package:flutter/material.dart';
import '../app/app_routes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          children: [


            TextButton.icon(
              icon: Icon(Icons.info),
              label: Text('Sobre o app'),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.APP_ROUTE_AMIGO_INFO);
              },
            ),
            TextButton.icon(
              icon: Icon(Icons.people_alt_outlined),
              label: Text('Meu amigo'),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.APP_ROUTE_AMIGO_CARD);
              },
            ),
          ]
      ),
    );
  }
}
