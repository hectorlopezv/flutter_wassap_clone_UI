import 'package:flutter/material.dart';
import 'package:wassap_clone/widgets/chat_input.dart';
import 'package:wassap_clone/widgets/chat_list.dart';
import 'package:wassap_clone/widgets/contacts_list.dart';
import 'package:wassap_clone/widgets/web_chat_appbar.dart';
import 'package:wassap_clone/widgets/web_profile.dart';
import 'package:wassap_clone/widgets/web_search_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfile(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: const [
                WebChatAppBar(),
                Expanded(
                  child: ChatList(),
                ),
                ChatInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
