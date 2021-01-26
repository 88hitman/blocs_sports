import 'dart:async';

import 'package:blocs_sports/blocs/bloc.dart';
import 'package:blocs_sports/model/player.dart';
import 'package:blocs_sports/services/sportsDB_api.dart';

class BlocPlayer extends Bloc {
  final _streamController = StreamController<List<Player>>();

  Stream<List<Player>> get stream => _streamController.stream;
  Sink<List<Player>> get sink => _streamController.sink;

  fetchRoster(String name) async {
    final result = await SportsDBApi().fetchPlayersRoster(name);
    sink.add(result);
  }

  makeQuery(String text) async {
    final result = await SportsDBApi().queryPlayer(text);
    sink.add(result);
  }

  @override
  dispose() => _streamController.close();
}