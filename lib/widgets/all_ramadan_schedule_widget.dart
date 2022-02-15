import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamgram/assets.dart';
import 'package:salamgram/data/data.dart';
import 'package:salamgram/widgets/all_ramadan_schedule_details_widget.dart';

class AllRamadanScheduleWidget extends StatelessWidget {
  const AllRamadanScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                const Text(
                  'All Ramadhan Schedule',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    VerticalButtons(
                      logoPath: Assets.moon_logo,
                      text: 'Ramadhan',
                    ),
                    VerticalButtons(
                      logoPath: Assets.calendar_logo,
                      text: 'Date',
                    ),
                    VerticalButtons(
                      logoPath: Assets.sehar_logo,
                      text: 'Suhoor',
                    ),
                    VerticalButtons(
                      logoPath: Assets.iftar_logo,
                      text: 'Iftar',
                    ),
                    SizedBox(),
                  ],
                ),
                RamadanScheduleDetails(schedule: ramadan_schedule),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerticalButtons extends StatelessWidget {
  const VerticalButtons({
    Key? key,
    required this.logoPath,
    required this.text,
  }) : super(key: key);
  final String logoPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          logoPath,
          color: Colors.black,
        ),
        Text(text),
      ],
    );
  }
}
