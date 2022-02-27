import 'package:flutter/cupertino.dart';

class PillarModel extends ChangeNotifier{
  String name;
  String imageUrl;
  List<String> headers;

  PillarModel({required this.name, required this.imageUrl,required this.headers});
}