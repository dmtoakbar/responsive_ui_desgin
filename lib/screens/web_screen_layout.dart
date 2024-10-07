import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui_design/colors.dart';
import 'package:responsive_ui_design/contact_list.dart';
import 'package:responsive_ui_design/screens/web_chat_screen.dart';
import 'package:responsive_ui_design/widgets/chat_list.dart';
import 'package:responsive_ui_design/widgets/web_profile_bar.dart';
import 'package:responsive_ui_design/widgets/web_profile_search.dart';
import 'package:responsive_ui_design/widgets/wep_app_chat_bars.dart';
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // web probile bar
                WebProfileBar(),
                // web search
                WebProfileSearch(),
                // bar
                ContactList()
              ],
            ),
          )
        ),
       //web screen
       WebChatScreen()
      ],
      ),
    );
  }
}
