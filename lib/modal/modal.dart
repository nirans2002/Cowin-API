class States {
  final String state_name;
  final int state_id;

  States(
    this.state_name,
    this.state_id,
  );

  factory States.fromJson(Map<String, dynamic> json) {
    return States(
      json['state_name'],
      json['state_id'],
    );
  }
}
