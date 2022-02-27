import 'package:flutter/material.dart';
import 'package:salamgram/constants/constants.dart';
class PillarHeaderDetails extends StatelessWidget {
  final String header;
  const PillarHeaderDetails({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_rounded),onPressed: ()=>Navigator.pop(context),),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                      child: Text(header,style: TextStyle(color: Colors.grey.shade600,fontSize: 20,fontWeight: FontWeight.bold),)),
                  const SizedBox(height: 20,),
                  const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',style: const TextStyle(color: Colors.grey),),
                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}
