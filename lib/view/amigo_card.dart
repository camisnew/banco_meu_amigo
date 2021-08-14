import 'package:flutter/material.dart';

class AmigoCard extends StatefulWidget {
  AmigoCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AmigoCardState createState() => _AmigoCardState();
}

class _AmigoCardState extends State<AmigoCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 150,
              color: Colors.red,
            ),
            Text('card aqui'),
          ]
        )
      )
    );
  }
}