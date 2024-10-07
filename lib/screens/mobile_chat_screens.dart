import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_design/colors.dart';
import 'package:responsive_ui_design/info.dart';
import 'package:responsive_ui_design/widgets/chat_list.dart';
class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: webAppBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
        leading: Builder(builder: (BuildContext context) {
          return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
          );
        },
        ),
      ),
      body: Column(
        children: [
          // chat list
          Expanded(child: ChatList()),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: dividerColor
                    )
                ),
                color: chatBarMessage
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.attach_file, color: Colors.grey,)),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )
                          ),
                          contentPadding: const EdgeInsets.only(left: 20),
                        ),
                      ),
                    )
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.mic, color: Colors.grey,)),
              ],
            ),
          )
          // text input
        ],
      ),
    );
  }
}
