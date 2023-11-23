import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  MyPage({this.heroTag,this.foodName, this.foodPrice});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading:  IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Detalhes',
        style: TextStyle(
          fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white
        ) ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon:  Icon(Icons.more_horiz),
            onPressed: () {},
            color:  Colors.white,
          )
        ],
      ),
    );
  }
}