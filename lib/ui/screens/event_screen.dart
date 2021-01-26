import 'package:blocs_sports/blocs/bloc_event.dart';
import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/ui/widgets/my_app_bar.dart';
import 'package:blocs_sports/ui/widgets/no_data.dart';
import 'package:blocs_sports/ui/widgets/text_alternate.dart';
import 'package:flutter/material.dart';
import 'package:blocs_sports/model/event.dart';

class EventScreen extends StatelessWidget {
  final bool isToday;

  EventScreen(this.isToday);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocEvent>(context);
    if (isToday) {
      bloc.fetchDate(DateTime.now());
    }
    return Scaffold(
      appBar: MyAppBar(titleString: "Evenements",),
      body: Column(
        children: <Widget>[
          (!isToday)
              ? FlatButton(
            child: TextAlternate(string: "Choisissez une date", size: 20, color: Colors.teal,),
            onPressed: () => bloc.showPickerWidget(context),
          )
              : Container(height: 1,),
          Expanded(
            child: StreamBuilder<List<Event>>(
              stream: bloc.stream,
              builder: (context, snap) {
                if (snap == null) {
                  return NoData("Aucun match");
                } else if (!snap.hasData) {
                  return NoData("Aucun match");
                } else {
                  final events = snap.data;
                  return ListView.separated(
                      itemBuilder: (c, i) => ListTile(title: Text(events[i].name),),
                      separatorBuilder: (c, i) => Divider(),
                      itemCount: events.length
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }

}