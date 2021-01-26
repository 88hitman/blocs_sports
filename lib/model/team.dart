import 'description.dart';
import 'social.dart';
import 'stadium.dart';
import 'team_image.dart';

class Team {
  String id;
  String soccerXml;
  String loved;
  String name;
  String short;
  String alternate;
  String formedYear;
  String sport;
  String leagueName;
  String leagueID;
  String division;
  String manager;
  Stadium stadium;
  String keywords;
  String rss;
  Description description;
  Social social;
  TeamImages images;

  Team.fromJson(Map json):
        id = json["idTeam"],
        soccerXml = json["idSoccerXML"],
        loved = json["intLoved"],
        name = json["strTeam"],
        short = json["strTeamShort"],
        alternate = json["strAlternate"],
        formedYear = json["intFormedYear"],
        sport =json["strSport"],
        leagueName = json["strLeague"],
        leagueID = json["idLeague"],
        division = json["strDivision"],
        manager = json["strManager"],
        keywords = json["strKeywords"],
        rss = json["strRSS"],
        description = Description.fromJson(json),
        stadium = Stadium.fromJson(json),
        social = Social.fromJson(json),
        images = TeamImages.fromJson(json);
}