import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/widgets/pillar_details_widget.dart';

class PillarDetails extends StatelessWidget {
  final List<String> pillarHeaders;
  final String imageUrl;
  final String title;

  const PillarDetails(
      {Key? key,
      required this.pillarHeaders,
      required this.imageUrl,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('5 Pillars of Islam'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlueAccent,
            Colors.white,
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SvgPicture.asset(
                    imageUrl,
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1),
                ),
                Expanded(
                  child: PillarDetailsWidget(
                    headers: pillarHeaders,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
