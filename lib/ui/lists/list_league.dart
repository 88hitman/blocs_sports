import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/ui/tile/tile_league.dart';
import 'package:flutter/material.dart';

class ListLeague extends StatelessWidget {

  final List<League> leagues;

  ListLeague(this.leagues);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (ctx, i) => TileLeague(leagues[i]),
        separatorBuilder: (ctx, i) => Divider(),
        itemCount: leagues.length
    );
  }

}