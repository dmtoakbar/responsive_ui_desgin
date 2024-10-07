import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_design/colors.dart';
class WebProfileSearch extends StatelessWidget {
  const WebProfileSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor
          )
        )
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.search, size: 20,),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'Search or start new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none
            )
          ),
          contentPadding: const EdgeInsets.all(10),

        ),
      ),
    );
  }
}
