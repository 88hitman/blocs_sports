import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  final String string;

  NoData(this.string);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        string,
        style: TextStyle(
          color: Colors.teal,
          fontSize: 25,
          fontStyle: FontStyle.italic
        ),
      ),
    );
  }

}