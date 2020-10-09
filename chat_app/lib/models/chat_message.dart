import 'package:chatapp/modules/chat_detail_page.dart';
import 'package:flutter/cupertino.dart';

class ChatMessage {
  final String message;
  final MessageType type;
  ChatMessage({@required this.message, @required this.type});
}
