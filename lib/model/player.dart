import 'description.dart';
import 'player_images.dart';

class Player {

  String id;
  String idTeam;
  String idNational;
  String idSoccerXML;
  String manager;
  String nationality;
  String player;
  String team;
  String nationalTeam;
  String sport;
  String soccerXMLID;
  String date;
  String number;
  String dateSign;
  String signing;
  String wage;
  String outfit;
  String kit;
  String agent;
  String gender;
  String side;
  String position;
  String college;
  String height;
  String weight;
  String birthPlace;
  PlayerImages images;
  Description description;

  Player.fromJson(Map json):
        id = json["idPlayer"],
        idTeam = json[ "idTeam"],
        idNational = json[ "idTeamNational"],
        idSoccerXML = json[ "idSoccerXML"],
        manager = json["idPlayerManager"],
        nationality = json["strNationality"],
        player = json["strPlayer"],
        team = json["strTeam"],
        nationalTeam = json["strTeamNational"],
        sport = json["strSport"],
        soccerXMLID = json["intSoccerXMLTeamID"],
        date = json["dateBorn"],
        number = json["strNumber"],
        dateSign = json["dateSigned"],
        signing = json["strSigning"],
        wage = json["strWage"],
        outfit = json["strOutfitter"],
        kit = json["strKit"],
        agent = json["strAgent"],
        birthPlace = json["strBirthLocation"],
        description = Description.fromJson(json),
        gender = json["strGender"],
        side = json["strSide"],
        position = json["strPosition"],
        college = json["strCollege"],
        height = json["strHeight"],
        weight = json["strWeight"],
        images = PlayerImages.fromJson(json);
}