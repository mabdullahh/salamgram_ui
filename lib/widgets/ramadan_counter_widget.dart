import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/widgets/counter_custom_shape_widget.dart';
import 'package:slide_countdown/slide_countdown.dart';

class RamadanCounter extends StatelessWidget {
  const RamadanCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime TimeNow = DateTime.now();
    DateTime nextday = DateTime.parse('2022-04-02');

    Duration timeleft = TimeNow.difference(nextday);
    

    return PhysicalModel(
      color: Colors.white,
      elevation: 5,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              const Text(
                'Ramadhan Countdown',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CounterCustomShape(
                      remaining: '300', dayorHoursorMinsorSec: 'Days'),
                  CounterCustomShape(
                      remaining: '11', dayorHoursorMinsorSec: 'Hours'),
                  CounterCustomShape(
                      remaining: '36', dayorHoursorMinsorSec: 'Mins'),
                  CounterCustomShape(
                      remaining: '56', dayorHoursorMinsorSec: 'Seconds'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SlideCountdown(
                duration: Duration(days: timeleft.abs().inDays),
                separatorType: SeparatorType.title,

                slideDirection: SlideDirection.up,
                decoration: BoxDecoration(
                  color: darkPrimary,
                  borderRadius: BorderRadius.circular(15),
                ),

                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
