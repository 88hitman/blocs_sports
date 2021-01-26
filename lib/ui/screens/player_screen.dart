import 'package:blocs_sports/blocs/bloc_player.dart';
import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/model/player.dart';
import 'package:blocs_sports/ui/lists/player_list.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  final String name;
  PlayerScreen(this.name);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocPlayer>(context);
    bloc.fetchRoster(name);
    return Scaffold(
      appBar: MyAppBar(titleString: name),
      body: StreamBuilder<List<Player>>(
        stream: bloc.stream,
        builder: (c, s) {
          if (s == null) {
            return NoData("No Data");
          } else if (!s.hasData) {
            return NoData("No Data");
          } else {
            return ListPlayer(s.data, isList: true,);
          }
        },
      ),
    );
  }
}