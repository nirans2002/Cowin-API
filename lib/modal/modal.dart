class States {
  final List<dynamic> states;
  final int totalCount;

  States({
    required this.states,
    required this.totalCount,
  });

  factory States.fromJson(Map<String, dynamic> json) {
    return States(totalCount: json['ttl'], states: json['states']);
  }
}

class State {
  String state_name;
  int state_id;
  State({required this.state_name, required this.state_id});

  factory State.fromJson(Map<String, dynamic> json) {
    return State(
      state_id: json['state_id'],
      state_name: json['state_name'],
    );
  }
}
