import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/data/data.dart';
import 'package:salamgram/widgets/chat_tile_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            const CustomSearchBar(),
            ChatTileWidget(tiles: chatTiles),
          ],
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: const TextField(
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.search_rounded,
              color: Colors.grey,
            ),
            border: InputBorder.none,
            hintText: 'Search . . .',
          ),
        ),
      ),
    );
  }
}
