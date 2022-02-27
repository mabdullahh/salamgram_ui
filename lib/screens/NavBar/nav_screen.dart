import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/providers/bottom_navigation_bar_provider.dart';
import 'package:salamgram/screens/NavBar/pray_screen.dart';
import 'package:salamgram/screens/NavBar/salam_screen.dart';

import '../../assets.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    const PrayScreen(),
    const SalamScreen(),
    const Text('Social Screen'),
    const Text('My profile Screen'),
  ];
  final Map<String, String> _icons = const {
    'Pray': Assets.pray,
    'Salam': Assets.chat,
    'Social': Assets.social,
    'My profile': Assets.profile,
  };


  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarProvider _page =
        Provider.of<BottomNavigationBarProvider>(context);


    return Scaffold(
      body: screens[_page.selectedPage],
      floatingActionButton: Image.asset(
        Assets.fab,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 5,
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    icon,
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                  activeIcon: SvgPicture.asset(
                    icon,
                    color: primaryColor,
                    width: 30,
                    height: 30,
                  ),
                  title: Text(title),
                )))
            .values
            .toList(),
        currentIndex: _page.selectedPage,
        selectedFontSize: 11,
        unselectedItemColor: Colors.grey,
        selectedItemColor: primaryColor,
        unselectedFontSize: 11,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        onTap: (int updatedPage) {
          _page.updateSelectedPage(updatedPage);
        },
      ),
    );
  }
}
