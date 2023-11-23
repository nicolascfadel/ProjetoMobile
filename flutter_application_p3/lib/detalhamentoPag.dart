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
      body:  ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                      
                    ),
                    color: Colors.white
                    
                  ),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              )
            ]
          )
        ],
      ),
    );
  }
}