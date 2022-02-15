import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salamgram/constants/constants.dart';
class RamadanScheduleTile extends StatelessWidget {
  const RamadanScheduleTile({
    Key? key,
    required this.logoPath,
    required this.time,
    required this.seharorIftar,
  }) : super(key: key);
  final String logoPath;
  final String time;
  final String seharorIftar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        color: darkPrimary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            SvgPicture.asset(
              logoPath,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 60,
                child: Center(
                    child: Text(
                      time,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Text(
              seharorIftar,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
