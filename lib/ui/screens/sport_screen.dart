import 'package:blocs_sports/blocs/bloc_league.dart';
import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/model/sport.dart';
import 'package:blocs_sports/ui/lists/list_league.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';

class SportScreen extends StatelessWidget {
  final Sport sport;

  SportScreen(this.sport);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocLeague>(context);
    final midHeight = MediaQuery.of(context).size.height / 2.5;
    return Scaffold(
      appBar: MyAppBar(titleString: sport.name),
      body: Column(
        children: <Widget>[
          detail(midHeight),
          Expanded(
            child: StreamBuilder<List<League>>(
              stream: bloc.stream,
                builder: (ctx, snap) {
                  if (snap == null) {
                    return NoData("Aucune Données");
                  } else if (!snap.hasData) {
                    return NoData("N'a pas de données");
                  } else {
                    return ListLeague(snap.data);                  }
                }
            ),
          )
        ],
      ),
    );
  }
  
  Container detail(double height) {
    return Container(
      height: height,
      child: Card(
        elevation: 7.5,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(sport.thumb),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(sport.desc)
              )
            ],
          ),
        ),
      ),
    );
  }
}