import 'package:flutter/material.dart';
import 'package:responsive_ui_design/colors.dart';
import 'package:responsive_ui_design/info.dart';
class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(info[0]['name'].toString(), style: TextStyle(fontSize: 18),)
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey,)),
            ],
          )
        ],
      ),
    );
  }
}
