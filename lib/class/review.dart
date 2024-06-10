import 'package:cloud_firestore/cloud_firestore.dart';

class Review {
  String id;
  String name;
  String userId;
  String comment;
  String photo;
  int stars;
  DateTime timestamp;

  Review({required this.id, required this.userId, required this.comment, required this.stars, required this.timestamp,required this.name,required this.photo});

  factory Review.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Review(
      id: doc.id,  // Including the document ID in the model
      userId: data['userId'],
      name: data['name'],
      comment: data['comment'],
      photo: data['userPhoto']??'',
      stars: data['stars'],
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }



}
