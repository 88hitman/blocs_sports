class EventImage {

  String poster;
  String fanart;
  String thumb;
  String banner;

  EventImage.fromJson(Map json):
        poster = json["strPoster"],
        fanart = json["strFanart"],
        thumb = json["strThumb"],
        banner = json["strBanner"];

}