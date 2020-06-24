import 'package:flutter/material.dart';

class Button extends StatelessWidget { 
  static const DARK = Color.fromRGBO(30, 30, 30, 1);
  static const EQUAL = Colors.green;

  final String text;
  final bool big;
  final Color color;
  final Color textColor;
  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.color = DARK,
    this.textColor = Colors.white,
    @required this.cb,
  });

  Button.equal({
    @required this.text,
    this.big = false,
    this.color = EQUAL,
    this.textColor = Colors.white,
    @required this.cb,
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = DARK,
    this.textColor = EQUAL,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(45.0)),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}