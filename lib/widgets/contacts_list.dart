import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wassap_clone/colors.dart';
import 'package:wassap_clone/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]["image"].toString()),
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
                );
              },
            ),
          ),
          const Divider(color:  dividerColor, indent: 85,)
        ],
      ),
    );
  }
}
