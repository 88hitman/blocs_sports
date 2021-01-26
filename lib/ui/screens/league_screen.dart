import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/blocs/bloc_team.dart';
import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/ui/lists/list_team.dart';
import 'package:blocs_sports/ui/widgets/icon_widget.dart';
import 'package:blocs_sports/ui/widgets/image_json.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:blocs_sports/ui/widgets/text_alternate.dart';
import 'package:flutter/material.dart';
import 'package:blocs_sports/model/team.dart';

class LeagueScreen extends StatelessWidget {
  final League league;
  LeagueScreen(this.league);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocTeam>(context);
    final height = MediaQuery.of(context).size.height / 4.5;
    return Scaffold(
      appBar: MyAppBar(titleString: league.name),
      body: Column(
        children: <Widget>[
          ImageJson(url: league.images.banner),
          Container(
            height: height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconWidget(url: league.images.badge, size: 75),
                      Column(
                        children: <Widget>[
                          TextAlternate(string: league.sport,size: 25, color: Colors.teal,),
                          TextAlternate(string: league.name,size: 20, color: Colors.black54,)
                        ],
                      )
                    ],
                  ),
                  TextAlternate(string: league.description.french, alternate: league.description.english,)
                ],
              )
            ),
          ),
          ImageJson(url: league.images.logo, height: 60,),
          Expanded(
            child: StreamBuilder<List<Team>>(
              stream: bloc.stream,
              builder: (ctx, snap) {
                if (snap == null) {
                  return NoData("No Data");
                } else if (!snap.hasData) {
                  return NoData("Data empty");
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