import 'package:blocs_sports/ui/tile/tile_sport.dart';
import 'package:flutter/material.dart';
import 'package:blocs_sports/model/sport.dart';

class ListSport extends StatelessWidget {
  final List<Sport> sports;

  ListSport(this.sports);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: sports.length,
        itemBuilder: (ctx, i) => TileSport(sports[i])
    );
  }
}