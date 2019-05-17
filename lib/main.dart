import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light
          ),
    
        home: Scaffold(
          body: Center(
            child: new CoolBox(),
          ),
        ),
    );
  }
}

class CoolBox extends StatefulWidget {
  const CoolBox({
    Key key,
  }) : super(key: key);

  @override
  _CoolBoxState createState() => _CoolBoxState();
}

class _CoolBoxState extends State<CoolBox> {

  double width = 100;
  double height = 100;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.elasticInOut,
      
      color: color,
      width: width,
      height: height,
      child: FlatButton(
        child: Text('Random'),
        onPressed: (){
          setState(() {
           width = Random().nextDouble() * 500;
           height = Random().nextDouble() * 500;

           int r = Random().nextInt(225);
           int g = Random().nextInt(225);
           int b = Random().nextInt(225);
           color = Color.fromRGBO(r, g, b, 1);
          });
        }
        ),
    );
  }
}
