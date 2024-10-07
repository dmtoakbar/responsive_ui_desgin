import 'dart:html';
import 'package:flutter/material.dart';
import 'package:responsive_ui_design/colors.dart';
import 'package:responsive_ui_design/screens/mobile_chat_screens.dart';

import 'info.dart';
class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child:
          ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      if( MediaQuery.of(context).size.width > 900) {

                      } else {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileChatScreen()));
                      }
                    },
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(info[index]['name'].toString(),  style: const TextStyle(fontSize: 18)),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(info[index]['message'].toString(), style: const TextStyle(fontSize: 15),),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                          radius: 30,
                        ),
                        trailing: Text(info[index]['time'].toString(), style: const TextStyle(fontSize: 13, color: Colors.grey),),
                      ),
                    ),
                  ),
                  const Divider(color: dividerColor,indent: 85,)
                ],
              );
              },
          ),

    );
  }
}
