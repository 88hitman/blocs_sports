import 'fan_art.dart';

class PlayerImages {
  String thumb;
  String cutout;
  String render;
  String banner;
  FanArt fanArt;

  PlayerImages.fromJson(Map json):
        thumb = json["strThumb"],
        cutout = json["strCutout"],
        render = json["strRender"],
        banner = json["strBanner"],
        fanArt = FanArt.fromJson(json, "strFanart");
}