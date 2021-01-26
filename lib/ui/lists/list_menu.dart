import 'package:blocs_sports/blocs/bloc_router.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Rechercher un joueur"),
          onTap: () => Navigator.of(context).push(BlocRouter().playerQueryRoute()),
        ),
        ListTile(
          title: Text("Rechercher une équipe"),
          onTap: () => Navigator.of(context).push(BlocRouter().teamQueryRoute()),
        ),
        ListTile(
          title: Text("Les événements du jour"),
          onTap: () => Navigator.of(context).push(BlocRouter().eventRoute(true)),
        ),
        ListTile(
          title: Text("Rechercher des événements sur une journée"),
          onTap: () => Navigator.of(context).push(BlocRouter().eventRoute(false)),
        ),
      ],
    );
  }

}