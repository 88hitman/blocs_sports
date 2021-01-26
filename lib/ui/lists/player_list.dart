import 'package:blocs_sports/model/player.dart';
import 'package:blocs_sports/ui/tile/tile_player.dart';
import 'package:flutter/material.dart';

class ListPlayer extends StatelessWidget {
  final List<Player> players;
  final bool isList;

  ListPlayer(this.players, {this.isList: false});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (isList)
        ? ListView.separated(
        itemBuilder: (c, i) => TilePlayer(player: players[i], isTile: isList,),
        separatorBuilder: (c, i) => Divider(),
        itemCount: players.length
    )
    : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (c, i) => TilePlayer(player: players[i], isTile: isList,),
      itemCount: players.length,
    );
  }
}