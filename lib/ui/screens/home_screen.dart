import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/blocs/bloc_sport.dart';
import 'package:blocs_sports/model/sport.dart';
import 'package:blocs_sports/services/sportsDB_api.dart';
import 'package:blocs_sports/ui/lists/list_menu.dart';
import 'package:blocs_sports/ui/lists/list_sport.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 5;
    final bloc = BlocProvider.of<BlocSport>(context);
    return Scaffold(
      appBar: MyAppBar(titleString: "I ❤️ Sports"),
      body: Column(
        children: <Widget>[
          Image.asset("images/Sports.png", height: height),
          Expanded( child: ListMenu()),
          Container(
            height: height,
            child: StreamBuilder<List<Sport>>(
              stream: bloc.stream,
              builder: (context, snap) {
                if (snap == null) {
                  return NoData("Pas de données");
                } else if (!snap.hasData) {
                  return NoData("Données vides");
                } else {
                  return ListSport(snap.data);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}