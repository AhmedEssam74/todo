class EventModel {
  String id;
  String title;
  String description;
  int data;
  bool isDone;

  EventModel({
    required this.id,
    required this.title,
    required this.description,
    required this.data,
    required this.isDone,
  });

  /// convert from map to json(model)
  /// take map and return model;
  EventModel.fromJson(Map<String, dynamic> json)
      : this(
          // returned Event model
          id: json['id'],
          title: json['title'],
          description: json['description'],
          data: json['data'],
          isDone: json['isDone'],
        );

  /// convert from json(model) to map
  /// return map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'data': data,
      'isDone': isDone,
    };
  }
// fromJson(Map<String, dynamic> json) {
//   // returned Event model
//   return EventModel(
//     id: json['id'],
//     title: json['title'],
//     description: json['description'],
//     data: json['data'],
//     isDone: json['isDone'],
//   );
// }
}
