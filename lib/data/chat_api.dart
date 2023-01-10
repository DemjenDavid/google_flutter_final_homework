import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/index.dart';

class ChatApi {
  ChatApi({required this.firestore});

  final FirebaseFirestore firestore;

  Stream<List<Message>> listenMessages() {
    return firestore.collection('messages').snapshots().map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Message.fromJson(doc.data()))
          .toList();
    });
  }

  Future<void> sendMessage({required AppUser user, required String text}) async {
    final Message message =
        Message(uid: user.uid, message: text, displayName: user.displayName, timestamp: Timestamp.now().toString());

    firestore.collection('messages').doc('${message.displayName}${message.timestamp}').set(message.toJson());
  }
}
