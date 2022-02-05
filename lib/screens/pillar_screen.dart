import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/data/data.dart';
import 'package:salamgram/widgets/widgets.dart';

class Pillars extends StatelessWidget {
  const Pillars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('5 Pillars of Islam'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.lightBlueAccent,
                Colors.white,
              ],
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: PillarList(
              pillars: pillars,
            ),
          ),
        ),
      ),
    );
  }
}
