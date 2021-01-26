import 'package:blocs_sports/model/team.dart';
import 'package:blocs_sports/ui/screens/team_screen.dart';
import 'package:blocs_sports/ui/widgets/icon_widget.dart';
import 'package:blocs_sports/ui/widgets/text_alternate.dart';
import 'package:flutter/material.dart';

class TileTeam extends StatelessWidget {
  final Team team;
  TileTeam(this.team);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: TextAlternate(string: team.name, color: Colors.teal,),
      leading: IconWidget(url: team.images.badge, size: 40,),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => TeamScreen(team))),
    );
  }

}