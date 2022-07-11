import 'package:flutter/material.dart';
import 'package:wassap_clone/info.dart';
import 'package:wassap_clone/widgets/my_message_card.dart';
import 'package:wassap_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]["isMe"] == true) {
            return MyMessageCard(
                message: messages[index]["text"].toString(),
                date: messages[index]["time"].toString());
          }
          return SenderMessageCard(
            message: messages[index]["text"].toString(),
            date: messages[index]["time"].toString(),
          );
        },
      ),
    );
  }
}
