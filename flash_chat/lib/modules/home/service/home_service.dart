import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/model/user_model.dart';

class HomeService {
  static Future<void> sendMessage(String sms) async {
    final sender = FirebaseAuth.instance.currentUser;
    if (sender != null) {
      final db = FirebaseFirestore.instance;
      final UserModel userModel = UserModel(
        user: sender.email!,
        sms: sms,
        dateTime: DateTime.now(),
      );
      await db.collection('messages').add(userModel.toJson());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> streamMessage() {
    final db = FirebaseFirestore.instance;
    return db
        .collection('messages')
        .orderBy('dateTime', descending: true)
        .snapshots();
  }
}
