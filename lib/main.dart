import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salamgram/providers/bottom_navigation_bar_provider.dart';
import 'package:salamgram/providers/pillar_details_provider.dart';
import 'package:salamgram/screens/calendar_screen.dart';


import 'screens/screens.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<BottomNavigationBarProvider>.value(
        value: BottomNavigationBarProvider(),
      ),
      ChangeNotifierProvider<PillarDetailsProvider>.value(value: PillarDetailsProvider()),

    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),

    ),
  ));
}


