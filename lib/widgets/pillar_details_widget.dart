import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
import 'package:salamgram/screens/pillar_header_detail_screen.dart';

class PillarDetailsWidget extends StatelessWidget {

  List<String> headers;
   PillarDetailsWidget({Key? key,required this.headers }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: headers.length,
        itemBuilder: (BuildContext context,int index){
        final String headerItem = headers[index];
        return Column(
          children: [

            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PillarHeaderDetails(header: headerItem,) ),),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,

                          ),
                          height: 10,
                          width: 10,
                        ),
                        const SizedBox(width: 20,),
                        Text(headerItem),

                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.grey,indent: 15,endIndent: 15,),
          ],
        );
        }
    );
  }
}
