import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/blocs/bloc_team.dart';
import 'package:blocs_sports/model/team.dart';
import 'package:blocs_sports/ui/lists/list_team.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';

class TeamQueryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocTeam>(context);
    return Scaffold(
      appBar: MyAppBar(titleString: "Rechercher une équipe"),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText:  "Nom de l'équipe"),
            onChanged: (name) => bloc.queryTeam(name),
          ),
          Expanded(
            child: StreamBuilder<List<Team>>(
              stream: bloc.stream,
              builder: (ctx, snap) {
                if (snap == null) {
                  return NoData("Aucune donnée");
                } else if (!snap.hasData) {
                  return NoData("Aucune équipe correspondante");
                } else {
                  return ListTeam(snap.data);
                }
              },
            ),
          )

        ],
      ),
    );
  }

}