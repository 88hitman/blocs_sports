import 'package:flutter/material.dart';

class TextAlternate extends StatelessWidget{
  final String string;
  final String alternate;
  final double size;
  final Color color;

  TextAlternate({@required this.string, this.alternate, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (string != null) {
      return text(string);
    } else if (alternate != null) {
      return text(alternate);
    } else {
      return Container(height: 1);
    }
  }

  Text text(String string) {
    return Text(
      string,
      style: TextStyle(
        fontSize: size ?? 14,
        color: color ?? Colors.black
      )
    );
  }
}