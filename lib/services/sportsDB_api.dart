import 'package:blocs_sports/model/event.dart';
import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/model/player.dart';
import 'package:blocs_sports/model/sport.dart';
import 'package:blocs_sports/model/team.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class SportsDBApi {

  final _baseUrl = "https://www.thesportsdb.com/api/v1/json/1/";
  String _allSports() => _baseUrl + "all_sports.php";
  String _allLeagues(String name) => _baseUrl + "search_all_leagues.php?s=" + name;
  String _allTeamFromLeague(String id) => _baseUrl + "lookup_all_teams.php?id=" + id;
  String _allPlayersFrom(String team) => _baseUrl + "searchplayers.php?t=" + team;
  String _playerQuery(String text) => _baseUrl + "searchplayers.php?p=" + text;
  String _teamQuery(String name) => _baseUrl + "searchteams.php?t=" + name;
  String _eventQuery(String day) => _baseUrl + "eventsday.php?d=" + day;
  
  Future<List<dynamic>> request(String urlString, String key) async {
    final result = await http.get(urlString);
    final body = json.decode(result.body);
    return body[key];
  }
  
  Future<List<Sport>> fetchSports() async {
    final List<dynamic> list = await request(_allSports(), "sports");
    return list.map((json) => Sport.fromJson(json)).toList();
  }

  Future<List<League>> fetchLeagues(String name) async {
    final List<dynamic> list = await request(_allLeagues(name), "countrys");
    return list.map((json) => League.fromJson(json)).toList();
  }

  Future<List<Team>> fetchTeams(String id) async {
    final List<dynamic> list= await request(_allTeamFromLeague(id), "teams");
    return list.map((json) => Team.fromJson(json)).toList();
  }

  Future<List<Team>> queryTeam(String name) async {
    final List<dynamic> list = await request(_teamQuery(name), "teams");
    if (list != null) {
      return list.map((json) => Team.fromJson(json)).toList();
    }
  }

  Future<List<Player>> fetchPlayersRoster(String team) async {
    final list = await request(_allPlayersFrom(team), "player");
    return list.map((json) => Player.fromJson(json)).toList();
  }

  Future<List<Player>> queryPlayer(String text) async {
    final list = await request(_playerQuery(text), "player");
    if (list != null) {
      return list.map((json) => Player.fromJson(json)).toList();
    }
  }
  
  Future<List<Event>> queryDay(String day) async {
    final list = await request(_eventQuery(day), "events");
    if (list != null) {
      return list.map((json) => Event.fromJson(json)).toList();
    }
  }



}