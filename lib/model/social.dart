class Social {
  String website;
  String facebook;
  String twitter;
  String instagram;
  String youtube;

  Social.fromJson(Map json)
      :website = json["strWebsite"],
        facebook = json["strFacebook"],
        twitter = json["strTwitter"],
        instagram = json["strInstagram"],
        youtube = json["strYoutube"];
}