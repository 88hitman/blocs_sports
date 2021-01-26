import 'package:blocs_sports/model/social.dart';
import 'description.dart';
import 'league_image.dart';

class League {

  String name;
  String id;
  String sport;
  String leagueAlternate;
  String division;
  String date;
  String idCup;
  String country;
  Description description;
  Social social;
  LeagueImage images;


  League.fromJson(Map json):
        id = json["idLeague"],
        sport = json['strSport'],
        name = json["strLeague"],
        leagueAlternate = json["strLeagueAlternate"],
        division = json["strLeagueDivision"],
        idCup = json["idCup"],
        date = json["intFormedYear"],
        country = json["strCountry"],
        description = Description.fromJson(json),
        social = Social.fromJson(json),
        images = LeagueImage.fromJson(json);
}