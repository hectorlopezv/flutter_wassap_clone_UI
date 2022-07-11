import 'package:flutter/material.dart';
import 'package:wassap_clone/colors.dart';
import 'package:wassap_clone/info.dart';
import 'package:wassap_clone/widgets/chat_input.dart';
import 'package:wassap_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.video_call,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: appBarColor,
        title: Text(
          info[0]["name"].toString(),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
