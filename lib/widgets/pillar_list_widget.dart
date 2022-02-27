import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/model/models.dart';
import 'package:salamgram/providers/pillar_details_provider.dart';
import 'package:salamgram/screens/FivePillars/pillar_detail_screen.dart';

class PillarList extends StatelessWidget {
  final List<PillarModel> pillars;

  const PillarList({Key? key, required this.pillars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PillarDetailsProvider>(

      builder: (context, value, child) => ListView.builder(
        itemCount: value.pillarData.length,
        itemBuilder: (BuildContext context, int index) {
          final PillarModel pillarListItem = pillars[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PillarDetails(
                      // pillarHeaders: pillarListItem.headers,
                      // imageUrl: pillarListItem.imageUrl,
                      // title: pillarListItem.name,
                    ),
                  ),



                );
                value.Headers(index);
                value.getImage(index);
                value.getTitle(index);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 65,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3)),
                      child: SvgPicture.asset(value.pillarData[index].imageUrl),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      value.pillarData[index].name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
