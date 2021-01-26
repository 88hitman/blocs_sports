import 'dart:async';

import 'package:blocs_sports/model/event.dart';
import 'package:blocs_sports/services/sportsDB_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bloc.dart';
import 'package:intl/intl.dart';

class BlocEvent extends Bloc {

  final _streamController = StreamController<List<Event>>();
  Stream<List<Event>> get stream => _streamController.stream;
  Sink<List<Event>> get sink => _streamController.sink;

  String dateFormatter(DateTime date) {
    return DateFormat("yyyy-MM-dd").format(date);
  }

  Future<Null> showPickerWidget(BuildContext context) async {
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050)
    );
    if (date != null) {
      fetchDate(date);
    }
  }

  fetchDate(DateTime date) async {
    final result = await SportsDBApi().queryDay(dateFormatter(date));
    sink.add(result);
  }

  @override
  dispose() => _streamController.close();
}