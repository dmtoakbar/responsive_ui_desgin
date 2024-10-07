import 'package:flutter/material.dart';

import '../colors.dart';
import '../widgets/chat_list.dart';
import '../widgets/wep_app_chat_bars.dart';
class WebChatScreen extends StatelessWidget {
  const WebChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.75,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/backgroundImage.png"),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        children: [
          // chat app bar
          WebChatAppBar(),
          // chat list
          Expanded(child: ChatList()),
          // message input box
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
        ],
      ),
    );
  }
}
