
import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  Todo(DocumentSnapshot doc){
    title = doc['title'];

    final Timestamp timestamp = doc['createdAt'];
    createdAt = timestamp.toDate();
  }

  late String title;
  late DateTime createdAt;
}