import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamgram/assets.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/screens/pillar_screen.dart';

class PrayScreen extends StatelessWidget {
  const PrayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

          crossAxisCount: 4,
          mainAxisSpacing: 15,
          scrollDirection: Axis.vertical,
          children: [
            GridChild(
              path: Assets.qibla,
              text: 'Qibla',
              ontap: () {},
            ),
            GridChild(
              path: Assets.tasbeeh,
              text: 'Tasbeeh',
              ontap: () {},
            ),
            GridChild(
              path: Assets.duas,
              text: 'Dua',
              ontap: () {},
            ),
            GridChild(
              path: Assets.addith,
              text: 'Addith',
              ontap: () {},
            ),
            GridChild(
              path: Assets.pillar,
              text: 'Five Pillars',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PillarScreen()),
                );
              },
            ),
            GridChild(
              path: Assets.salamkids,
              text: 'Salam Kids',
              ontap: () {},
            ),
            GridChild(
              path: Assets.me_quran,
              text: 'M/E Quran',
              ontap: () {},
            ),
            GridChild(
              path: Assets.quran,
              text: 'Quran',
              ontap: () {},
            ),
            GridChild(
              path: Assets.grid_hajj,
              text: 'Hajj',
              ontap: () {},
            ),
            GridChild(
              path: Assets.umrah,
              text: 'Umrah',
              ontap: () {},
            ),
            GridChild(
              path: Assets.n_names,
              text: '99 Names',
              ontap: () {},
            ),
            GridChild(
              path: Assets.six_kalimah,
              text: 'Khalimas',
              ontap: () {},
            ),
            GridChild(
              path: Assets.yaseen,
              text: 'Yaseen',
              ontap: () {},
            ),
            GridChild(
              path: Assets.wudhu,
              text: 'Wudhu',
              ontap: () {},
            ),
            GridChild(
              path: Assets.namas,
              text: 'Namas',
              ontap: () {},
            ),
            GridChild(
              path: Assets.islamic_quiz,
              text: 'Islamic Quiz',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class GridChild extends StatelessWidget {
  const GridChild({
    Key? key,
    required this.path,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  final String path;
  final String text;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(path,width: 60,height: 60,),
          const SizedBox(height: 10,),
          Text(text),
        ],
      ),
    );
  }
}
