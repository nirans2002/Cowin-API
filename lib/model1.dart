// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class Model {
  Model({
    required this.states,
  });

  final List<State> states;

  factory Model.fromJson(String str) => Model.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Model.fromMap(Map<String, dynamic> json) => Model(
        states: List<State>.from(json["states"].map((x) => State.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "states": List<dynamic>.from(states.map((x) => x.toMap())),
      };
}

class State {
  State({
    required this.state_id,
    required this.state_name,
  });

  final int state_id;
  final String state_name;

  factory State.fromJson(String str) => State.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory State.fromMap(Map<String, dynamic> json) => State(
        state_id: json["state_id"],
        state_name: json["state_name"],
      );

  Map<String, dynamic> toMap() => {
        "state_id": state_id,
        "state_name": state_name,
      };
}
