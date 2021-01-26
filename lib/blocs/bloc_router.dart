import 'package:blocs_sports/blocs/bloc_event.dart';
import 'package:blocs_sports/blocs/bloc_league.dart';
import 'package:blocs_sports/blocs/bloc_player.dart';
import 'package:blocs_sports/blocs/bloc_provider.dart';
import 'package:blocs_sports/blocs/bloc_sport.dart';
import 'package:blocs_sports/blocs/bloc_team.dart';
import 'package:blocs_sports/model/league.dart';
import 'package:blocs_sports/model/sport.dart';
import 'package:blocs_sports/ui/screens/event_screen.dart';
import 'package:blocs_sports/ui/screens/home_screen.dart';
import 'package:blocs_sports/ui/screens/league_screen.dart';
import 'package:blocs_sports/ui/screens/player_query_screen.dart';
import 'package:blocs_sports/ui/screens/player_screen.dart';
import 'package:blocs_sports/ui/screens/sport_screen.dart';
import 'package:blocs_sports/ui/screens/team_query_screen.dart';
import 'package:flutter/material.dart';

class BlocRouter {

  MaterialPageRoute sportDetail(Sport s) => MaterialPageRoute(builder: (ctx) => sport(s));
  MaterialPageRoute leagueDetail(League l) => MaterialPageRoute(builder: (ctx) => league(l));
  MaterialPageRoute playersRoster(String name) => MaterialPageRoute(builder: (ctx) => player(name));
  MaterialPageRoute playerQueryRoute() => MaterialPageRoute(builder: (ctx) => playerQuery());
  MaterialPageRoute teamQueryRoute() => MaterialPageRoute(builder: (ctx)=> teamQuery());
  MaterialPageRoute eventRoute(bool isToday) => MaterialPageRoute(builder: (ctx) => event(isToday));

  BlocProvider allSports() => BlocProvider<BlocSport>(bloc: BlocSport(), child: HomeScreen());
  BlocProvider sport(Sport sport) => BlocProvider<BlocLeague>(bloc: BlocLeague(sport.name), child: SportScreen(sport));
  BlocProvider league(League league) => BlocProvider<BlocTeam>(bloc: BlocTeam(league.id), child: LeagueScreen(league));
  BlocProvider player(String name) => BlocProvider<BlocPlayer>(bloc: BlocPlayer(), child: PlayerScreen(name));
  BlocProvider playerQuery() => BlocProvider<BlocPlayer>(bloc: BlocPlayer(), child: PlayerQueryScreen());
  BlocProvider teamQuery() => BlocProvider<BlocTeam>(bloc: BlocTeam(null), child: TeamQueryScreen());
  BlocProvider event(bool isToday) => BlocProvider<BlocEvent>(bloc: BlocEvent(), child: EventScreen(isToday));
}