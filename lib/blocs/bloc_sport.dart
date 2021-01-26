import 'dart:async';
import 'package:blocs_sports/model/sport.dart';

import 'package:blocs_sports/blocs/bloc.dart';
import 'package:blocs_sports/services/sportsDB_api.dart';

class BlocSport extends Bloc {
  final _streamController = StreamController<List<Sport>>();
  Stream<List<Sport>> get stream => _streamController.stream;
  Sink<List<Sport>> get sink => _streamController.sink;

  fetchSports() async {
    final sports = await SportsDBApi().fetchSports();
    sink.add(sports);
  }

  BlocSport() {
    fetchSports();
  }


  @override
  dispose() => _streamController.close();
}