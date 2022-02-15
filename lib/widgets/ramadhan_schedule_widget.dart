import 'package:flutter/material.dart';
import 'package:salamgram/assets.dart';

import 'ramadhan_schedule_tile_widget.dart';

class RamadanScheduleWidget extends StatelessWidget {
  const RamadanScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      elevation: 5,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const Text(
                'Ramadhan Today Schedule',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Text(
                      'Saturday, 6 February 2022',
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '23 Jumada || 1442',
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  RamadanScheduleTile(
                    time: '06:00',
                    logoPath: Assets.sehar_logo,
                    seharorIftar: 'Suhoor Time',
                  ),
                  RamadanScheduleTile(
                    time: '17:35',
                    logoPath: Assets.iftar_logo,
                    seharorIftar: 'Iftar Time',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
