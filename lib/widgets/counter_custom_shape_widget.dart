import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
class CounterCustomShape extends StatelessWidget {
  final String remaining;
  final String dayorHoursorMinsorSec;
  const CounterCustomShape({
    Key? key, required this.remaining, required this.dayorHoursorMinsorSec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 90,
        width: 65,
        decoration: BoxDecoration(
          color: darkPrimary,
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child:  Text(dayorHoursorMinsorSec,style: const TextStyle(color: Colors.white,fontSize: 12),),
      ),
      Positioned(
        top: 1,
        child: Container(
          height: 60,
          width: 65,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: darkPrimary)
          ),
          child:Center(child:Text(remaining,style: const TextStyle(fontSize: 15),)),
        ),
      ),
    ]);
  }
}