import 'event_date.dart';
import 'event_detail.dart';
import 'event_image.dart';

class Event {
  String id;
  String idSoccerXML;
  String name;
  String alternate;
  String filename;
  String sport;
  String idLeague;
  String strLeague;
  String strSeason;
  String strDescriptionEN;
  TeamEventDetail home;
  TeamEventDetail away;
  String intHomeScore;
  String intRound;
  String intAwayScore;
  String intSpectators;
  String awayFormation;
  String intHomeShots;
  String intAwayShots;

  String tvStation;
  String idHomeTeam;
  String idAwayTeam;
  String result;
  String circuit;
  String country;
  String city;
  String video;
  EventImage images;
  EventDate eventDate;

  Event.fromJson(Map json):
        id = json["idEvent"],
        idSoccerXML= json["idSoccerXML"],
        name = json["strEvent"],
        alternate = json["strEventAlternate"],
        filename = json["strFilename"],
        sport = json["strSport"],
        idLeague = json["idLeague"],
        strLeague = json["strLeague"],
        strSeason = json["strSeason"],
        strDescriptionEN = json["strDescriptionEN"],
        home = TeamEventDetail.fromJson("strHome", json),
        away = TeamEventDetail.fromJson("strAway", json),
        intHomeScore = json["intHomeScore"],
        intRound = json["intRound"],
        intAwayScore = json["intAwayScore"],
        intSpectators = json["intSpectators"],
        intHomeShots = json["intHomeShots"],
        intAwayShots = json["intAwayShots"],
        tvStation = json["strTVStation"],
        idHomeTeam = json["idHomeTeam"],
        idAwayTeam = json["idAwayTeam"],
        result = json["strResult"],
        circuit = json["strCircuit"],
        country = json["strCountry"],
        city = json["strCity"],
        images = EventImage.fromJson(json),
        eventDate = EventDate.fromJson(json),
        video = json["strVideo"];
}
