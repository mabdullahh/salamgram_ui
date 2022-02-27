import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/screens/chat_screen.dart';

class SalamScreen extends StatelessWidget {
  const SalamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: scaffoldbgColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: primaryColor,
            child: SafeArea(
              child: TabBar(
                labelPadding: const EdgeInsets.all(14),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.white, width: 3),
                ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                tabs: [
                  Row(
                    children: [
                      const Text('CHATS'),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('CALL'),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            '99+',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text('FOLLOWING'),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            Text('call screen'),
            Text('following'),
          ],

        ),
      ),
    );
  }
}
