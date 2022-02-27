import 'package:flutter/cupertino.dart';
import 'package:salamgram/data/data.dart';
import 'package:salamgram/model/models.dart';

class PillarDetailsProvider extends ChangeNotifier {
  List<PillarModel> pillarData = pillars;
  List<String> headers =[];
  String imageUrl='';
  String title='';
  void Headers(int index){
    headers =pillarData[index].headers;
    notifyListeners();
  }
  void getImage(int index){
    imageUrl = pillarData[index].imageUrl;
    notifyListeners();

  }
  void getTitle(int index ){
    title = pillarData[index].name;
    notifyListeners();

  }


}