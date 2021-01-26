import 'dart:async';

import 'package:blocs_sports/blocs/bloc.dart';
import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/services/sportsDB_api.dart';

class BlocLeague extends Bloc {
  final _streamController = StreamController<List<League>>();
  Stream<List<League>> get stream => _streamController.stream;
  Sink<List<League>> get sink => _streamController.sink;

  BlocLeague(String name) {
    fetchLeagues(name);
  }

  fetchLeagues(String name) async {
    final result = await SportsDBApi().fetchLeagues(name);
    sink.add(result);
  }

  @override
  dispose() => _streamController.close();
}