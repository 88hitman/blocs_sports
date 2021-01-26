import 'package:blocs_sports/blocs/bloc_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blocs_sports/model/sport.dart';

class TileSport extends StatelessWidget {
  final Sport sport;
  TileSport(this.sport);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Card(
        color: Colors.teal,
        elevation: 7.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              sport.name,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.white
              ),),
            Image.network(sport.thumb, width: MediaQuery.of(context).size.width / 2.5,)
          ],
        ),
      ),
      onTap: () => Navigator.of(context).push(BlocRouter().sportDetail(sport)),
    );
  }
}