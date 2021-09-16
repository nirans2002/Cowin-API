// file not used

class Model {
  var states;
  var state_id;
  var state_name;
  List<Item> items;

  Model({required this.states, required this.items});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
        items: List<Item>.from(json['states'].map((x) => Item.fromJson(x))),
        states: null);
  }
}

class Item {
  int state_id;
  String state_name;

  Item({
    required this.state_id,
    required this.state_name,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      state_id: json['state_id'],
      state_name: json['state_name'],
    );
  }
}
