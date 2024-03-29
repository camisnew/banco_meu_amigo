import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmigoCard extends StatefulWidget {
  AmigoCard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AmigoCardState createState() => _AmigoCardState();
}

class _AmigoCardState extends State<AmigoCard> {

  GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();

  _renderBackground(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
    );
  }

  _renderBack(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Center(
        child: Image.network('https://media.discordapp.net/attachments/278958026134913024/876659038593622016/cartao_verso.png')
      ),
    );
  }

  _renderFront(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Center(
        child:
          Image.network('https://media.discordapp.net/attachments/278958026134913024/876609572742238268/cartao.png')
      ),
    );
  }

  _renderCard(BuildContext context){
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 50.0, bottom: 100.0),
      child: FlipCard(
        key: _cardKey,
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print('status: $status');
        },
        front: _renderFront(),
        back: _renderBack(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _renderBackground(),
          Column(
            children: [
              Container(
                width: 500,
                height: 450,
                child: _renderCard(context),
              )
            ],
          ),
        ],
      ),
    );
  }
}