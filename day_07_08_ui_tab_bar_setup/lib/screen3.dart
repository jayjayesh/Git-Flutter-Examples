import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Align(
        alignment:
            Alignment(0, 0.9), //! Note: (top-middle-bottom = (-1, 0, +1))
        child: Text('Screen3',
            style: TextStyle(fontSize: 30, backgroundColor: Colors.yellow)),
      ),
    );
  }
}
