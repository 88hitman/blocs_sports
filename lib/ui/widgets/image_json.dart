import 'package:flutter/material.dart';

class ImageJson extends StatelessWidget {
  final String url;
  final double height;
  ImageJson({@required this.url, this.height});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (url == null)
    ? Container(height: 1)
    : Image.network(url, height: height,);
  }
}