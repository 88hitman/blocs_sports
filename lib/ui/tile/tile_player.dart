
import 'package:blocs_sports/model/player.dart';
import 'package:blocs_sports/ui/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class TilePlayer extends StatelessWidget {
  final Player player;
  final bool isTile;
  TilePlayer({@required this.player, this.isTile: false});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (isTile)
        ? ListTile(
      title: Text(player.player),
      leading: IconWidget(url: player.images.thumb, size: 75,)
    )
    : Card(
      child: Column(
        children: <Widget>[
          Text(player.player),
          IconWidget(url: player.images.thumb, size: MediaQuery.of(context).size.width / 3,)
        ],
      ),
    );
  }
}
