import 'package:flutter/material.dart';
import 'package:inspirationappui/animations/ButoonAnimation.dart';

class SevenPage extends StatefulWidget {
  @override
  _SevenPageState createState() => _SevenPageState();
}

class _SevenPageState extends State<SevenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonAnimation(
                Color.fromRGBO(57, 92, 249, 1),
                Color.fromRGBO(44, 78, 233, 1),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(
                Colors.yellow[700],
                Colors.yellow[800],
              ),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(
                Colors.green[700],
                Colors.green[800],
              ),
              SizedBox(
                height: 20,
              ),
              ButtonAnimation(
                Colors.red[700],
                Colors.red[800],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
