import 'package:flutter/material.dart';
import 'package:wassap_clone/colors.dart';

class WebProfile extends StatelessWidget {
  const WebProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.068,
      width: MediaQuery.of(context).size.width * 0.3,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: dividerColor,
            ),
          ),
          color: webAppBarColor),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg"),
              radius: 20,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(
              Icons.comment,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
