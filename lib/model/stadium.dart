class Stadium {
  String name;
  String stadiumThumb;
  String stadiumDesc;
  String stadiumLocation;
  String stadiumCapacity;

  Stadium.fromJson(Map json) :
        name = json["strStadium"],
        stadiumThumb = json["strStadiumThumb"],
        stadiumDesc = json["strStadiumDescription"],
        stadiumLocation = json["strStadiumLocation"],
        stadiumCapacity = json["intStadiumCapacity"];
}