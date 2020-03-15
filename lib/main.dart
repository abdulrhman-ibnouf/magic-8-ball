import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Magic 8 Ball',
  home: Scaffold(
    backgroundColor: Colors.blue[600],
    appBar: AppBar(
      title: Text('Ask Me Anything'),
      centerTitle: true,
      backgroundColor: Colors.blue[800],
      ),
    body: Magic8BallPage(),
  ),
));

class Magic8BallPage extends StatefulWidget {
  @override
  _Magic8BallPageState createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber = 0 ;
  void changeBall () {
    ballNumber = Random().nextInt(20) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(16, 70, 16, 40),
            child: Text(
                'Yes or No Questions only',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(16, 40, 16, 16),
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeBall();
                });
              },
              onLongPress: (){
                setState(() {
                  ballNumber = 0;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
