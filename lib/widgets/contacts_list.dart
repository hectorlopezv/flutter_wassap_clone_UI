import 'package:flutter/material.dart';
import 'package:wassap_clone/colors.dart';
import 'package:wassap_clone/info.dart';
import 'package:wassap_clone/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MobileChatScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(
                    5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(info[index]["image"].toString()),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]["time"].toString(),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    title: Text(
                      info[index]["name"].toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]["message"].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: dividerColor,
                indent: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}
