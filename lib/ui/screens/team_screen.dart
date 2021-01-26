import 'package:blocs_sports/blocs/bloc_router.dart';
import 'package:blocs_sports/model/team.dart';
import 'package:blocs_sports/ui/widgets/icon_widget.dart';
import 'package:blocs_sports/ui/widgets/image_json.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/separator.dart';
import 'package:blocs_sports/ui/widgets/text_alternate.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
  final Team team;
  TeamScreen(this.team);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: MyAppBar(titleString: team.name),
      body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ImageJson(url: team.images.banner),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconWidget(url: team.images.badge, size: 75),
                    Column(
                      children: <Widget>[
                        TextAlternate(string: team.name),
                        TextAlternate(string: team.sport),
                        TextAlternate(string: team.leagueName)
                      ],
                    )
                  ],
                ),
                Separator(),
                FlatButton(
                  child: TextAlternate(string: "Effectif", size: 25, color: Colors.teal),
                  onPressed: () => Navigator.of(context).push(BlocRouter().playersRoster(team.name)),
                ),
                Separator(),
                Column(
                  children: <Widget>[
                    TextAlternate(string: "Histoire", color: Colors.teal, size: 25,),
                    TextAlternate(string: team.description.french, alternate: team.description.english,)

                  ],
                ),
                Separator(),
                Column(
                  children: <Widget>[
                    TextAlternate(string: "Stade", color: Colors.teal, size: 25,),
                    TextAlternate(string: team.stadium.name),
                    ImageJson(url: team.stadium.stadiumThumb),
                    TextAlternate(string: team.stadium.stadiumDesc)
                  ],
                ),
                Separator(),
                Column(children: fans(),)
              ],
            ),
          )
    );
  }

  List<Widget> fans() {
    List<Widget> w = [];
    team.images.fanArt.images.forEach((url) => w.add(ImageJson(url: url,)));
    return w;
  }

}