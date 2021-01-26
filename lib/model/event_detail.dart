class TeamEventDetail {
  String name;
  String goalDetails;
  String redCards;
  String yellowCards;
  String lineupGoalkeeper;
  String lineupDefense;
  String lineupMidfield;
  String lineupForward;
  String lineupSubstitutes;
  String formation;

  TeamEventDetail.fromJson(String home, Map json):
        name = json[home + "Team"],
        goalDetails = json[home + "GoalDetails"],
        redCards = json[home + "RedCards"],
        yellowCards = json[home + "YellowCards"],
        lineupGoalkeeper = json[home + "LineupGoalkeeper"],
        lineupDefense = json[home + "LineupDefense"],
        lineupMidfield = json[home + "LineupMidfield"],
        lineupForward = json[home + "LineupForward"],
        lineupSubstitutes = json[home + "LineupSubstitutes"],
        formation= json[home + "Formation"];
}