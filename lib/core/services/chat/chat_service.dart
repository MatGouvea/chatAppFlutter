import 'package:chat_app/core/models/chat_user.dart';
import '../../models/chat_message.dart';
import 'chat_firebase_service.dart';

abstract class ChatService {
  Stream<List<ChatMessage>> messagesStream();
  Future<ChatMessage?> save(String text, ChatUser user);

  factory ChatService() {
    return ChatFirebaseService();
  }
}