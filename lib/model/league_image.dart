import 'fan_art.dart';

class LeagueImage {
  String logo;
  String poster;
  String trophy;
  String badge;
  String banner;
  FanArt fanArt;

  LeagueImage.fromJson(Map json):
        logo = json["strLogo"],
        poster = json["strPoster"],
        trophy = json["strTrophy"],
        badge = json["strBadge"],
        banner = json["strBanner"],
        fanArt = FanArt.fromJson(json, "strFanart");
}