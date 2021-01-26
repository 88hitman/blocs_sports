class EventDate {
  String dateEvent;
  String dateEventLocal;
  String date;
  String time;
  String timeLocal;

  EventDate.fromJson(Map json):
        dateEvent= json["dateEvent"],
        dateEventLocal = json["dateEventLocal"],
        date= json["strDate"],
        timeLocal = json["strTimeLocal"],
        time= json["strTime"];
}