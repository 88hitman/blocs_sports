import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final String url;
  final double size;
  IconWidget({@required this.url, @required this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (url == null)
        ? Container(height: size, width: size)
        : Image.network(url, height: size, width: size,);
  }
}