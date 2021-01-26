import 'package:blocs_sports/model/team.dart';
import 'package:blocs_sports/ui/tile/tile_team.dart';
import 'package:flutter/material.dart';

class ListTeam extends StatelessWidget {
  List<Team> teams;
  ListTeam(this.teams);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (ctx, i) => TileTeam(teams[i]),
        separatorBuilder: (ctx, i) => Divider(),
        itemCount: teams.length
    );
  }
}