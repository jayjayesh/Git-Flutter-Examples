import 'package:flutter/material.dart';
import 'screen3.dart';
import 'ScreenArguments.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = "/screen2";
  final passData;
  Screen2(
      {this.passData}); //passData = Constructer = means = must have to pass while create new Object

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Passed data = $passData',
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedButton(
                child: Text('Go to Screen 3'),
                onPressed: () {
                  Navigator.pushNamed(context, Screen3.routeName,
                      arguments:
                          ScreenArguments('test string1', [1, 2, 3, 4, 5]));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
