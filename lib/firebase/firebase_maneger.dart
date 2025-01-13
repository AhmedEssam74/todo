import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/models/event_model.dart';

class FirebaseManager {
  static void addEvent() {
    FirebaseFirestore.instance.collection("Events").withConverter<EventModel>(
          fromFirestore: (snapshot, _) {
            return EventModel.fromJson(snapshot.data()!);
          },
          toFirestore: (value, _) {
            return value.toJson();
          },
        ).add(EventModel(id: "3", title: "play", description: "football", data: 11, isDone: false));
  }
}
