import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/model/ramadan_schedule_model.dart';

class RamadanScheduleDetails extends StatelessWidget {
  const RamadanScheduleDetails({Key? key, required this.schedule})
      : super(key: key);
  final List<RamadanSchedule> schedule;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: schedule.length,
        itemBuilder: (BuildContext context, int index) {
          final RamadanSchedule fastDetails = schedule[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: darkPrimary,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    fastDetails.serialNumber,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  Column(
                    children: [
                      Text(
                        fastDetails.day,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        fastDetails.date,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    fastDetails.seharTime,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    fastDetails.iftartime,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
