import 'package:blocs_sports/blocs/bloc_player.dart';
import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/model/player.dart';
import 'package:blocs_sports/ui/lists/player_list.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';

class PlayerQueryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocPlayer>(context);
    return Scaffold(
      appBar: MyAppBar(titleString: "Rechercher un joueur"),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Entrez le nom d'un joueur"),
            onChanged: (text) => bloc.makeQuery(text),
          ),
          Expanded(
            child:
            StreamBuilder<List<Player>>(
              stream: bloc.stream,
              builder: (ctx, snap) {
                if (snap == null) {
                  return NoData("Aucun joueur");
                } else if (!snap.hasData) {
                  return NoData("Aucun joueur correspondant");
                } else {
                  return ListPlayer(snap.data, isList: true,);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}