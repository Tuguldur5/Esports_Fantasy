import 'package:html_unescape/html_unescape.dart';

class Player {
  String name;
  String tag;
  String image;
  String country;
  int age;
  String team;
  String role;
  String tournament;
  double points;
  int price;

  Player();

  Player.card(String tag, double points, String role, String team)
      : tag = tag,
        points = points,
        role = role,
        team = team;

  Player.fromJson(Map<String, dynamic> json)
      : name = new HtmlUnescape().convert(json['Name']).replaceAll("&nbsp;", " "),
        tag = json['ID'],
        image = json['Image'],
        country = json['Country'],
        age = int.tryParse(json['Age']) ?? 0,
        team = json['Team'],
        role = json['Role'].toLowerCase(),
        tournament = json['Tournament'],
        points = 0,
        price = 0;
}