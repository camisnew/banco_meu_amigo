import 'package:flutter/material.dart';

class AmigoInfo extends StatefulWidget {
  AmigoInfo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AmigoInfoState createState() => _AmigoInfoState();
}

class _AmigoInfoState extends State<AmigoInfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Conheça os amigos responsáveis pelo Amigo Card!'),
            Text('Camila : camilabertholdpires@gmail.com | github.com/camisnew'),
            Text('Luan : luanb.aguiar@gmail.com | github.com/luanborrges'),
          ],
        ),
      ),
    );
  }
}