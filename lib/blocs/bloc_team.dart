import 'dart:async';

import 'package:blocs_sports/blocs/bloc.dart';
import 'package:blocs_sports/model/team.dart';
import 'package:blocs_sports/services/sportsDB_api.dart';

class BlocTeam extends Bloc {
  final _streamController = StreamController<List<Team>>();
  Stream<List<Team>> get stream => _streamController.stream;
  Sink<List<Team>> get sink => _streamController.sink;

  BlocTeam(String id) {
    if (id != null) {
      fetchTeams(id);
    }
  }

  fetchTeams(String id) async {
    final list = await SportsDBApi().fetchTeams(id);
    sink.add(list);
  }

  queryTeam(String name) async {
    final result = await SportsDBApi().queryTeam(name);
    sink.add(result);
  }

  @override
  dispose() => _streamController.close();
}