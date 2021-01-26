class Description {
  String english;
  String french;

  Description.fromJson(Map json):
        english = json["strDescriptionEN"],
        french = json["strDescriptionFR"];
}