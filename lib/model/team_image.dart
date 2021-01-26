import 'fan_art.dart';

class TeamImages {
  String badge;
  String jersey;
  String logo;
  FanArt fanArt;
  String banner;

  TeamImages.fromJson(Map json):
        badge = json["strTeamBadge"],
        jersey = json["strTeamJersey"],
        logo = json["strTeamLogo"],
        fanArt = FanArt.fromJson(json, "strTeamFanart"),
        banner = json["strTeamBanner"];
}