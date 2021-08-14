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
        child: Text('amigo, amigo'),
      ),
    );
  }
}