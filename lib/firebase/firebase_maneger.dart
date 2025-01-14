import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/models/event_model.dart';

class FirebaseManager {
  static CollectionReference<EventModel> getEventsCollection() {
    return FirebaseFirestore.instance
        .collection("Events")
        .withConverter<EventModel>(
      fromFirestore: (snapshot, _) {
        return EventModel.fromJson(snapshot.data()!);
      },
      toFirestore: (value, _) {
        return value.toJson();
      },
    );
  }

  /// Create Event Function
  static Future<void> addEvent(EventModel model) {
    var createEventCollection = getEventsCollection();
    var docRef = createEventCollection.doc();
    model.id = docRef.id;
    return docRef.set(model);
    // .catchError((error) => print("Failed to add event: $error"));
  }

  /// Get Event Function
  static Stream<QuerySnapshot<EventModel>> getEvent() {
    var getEventCollection = getEventsCollection();
    return getEventCollection.orderBy("date").snapshots();
  }

  /// Delete Event Function

  static Future<void> deleteEvent(String eventId) {
    var deleteEventCollection = getEventsCollection();
    return deleteEventCollection.doc(eventId).delete();
    // .catchError((error) => print("Failed to add event: $error"));
  }

  /// Update Event Function

  static Future<void> updateEvent(EventModel model, String eventId) {
    var updateEventCollection = getEventsCollection();
    return updateEventCollection.doc(eventId).update(model.toJson());
  }
}
