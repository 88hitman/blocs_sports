import 'package:blocs_sports/blocs/bloc_router.dart';
import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/ui/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class TileLeague extends StatelessWidget {
  final League league;
  
  TileLeague(this.league);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(league.name),
      leading: IconWidget(url: league.images.badge, size: 40),
      onTap: () => Navigator.of(context).push(BlocRouter().leagueDetail(league)),
    );
  }
}