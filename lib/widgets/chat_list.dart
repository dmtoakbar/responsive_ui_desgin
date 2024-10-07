import 'package:flutter/material.dart';
import 'package:responsive_ui_design/info.dart';
import 'package:responsive_ui_design/widgets/my_messages.dart';
import 'package:responsive_ui_design/widgets/sender_message_card.dart';
class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: messages.length,
        itemBuilder: (context, index){
            if(messages[index]['isMe']==true) {
              // my message card
              return MyMessages(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
            } else {
              //sender message card
              return SenderMessages(message: messages[index]['text'].toString(), date: messages[index]['time'].toString());
            }
        }
    );
  }
}
