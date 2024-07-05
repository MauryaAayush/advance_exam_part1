

import 'package:advance_exam_part1/Screens/Model/Modelclass.dart';
import 'package:flutter/material.dart';

import 'Helper/MainHelper.dart';

class NewsProvider extends ChangeNotifier {

  List finaldata = [];
  bool isLoading = false;
  List<Articles> dataValue =[];

  Future<void> getValue() async {
    isLoading = true;
    notifyListeners();
    print('Provider called');
    finaldata = await ApiServices.apiServices.getServices();

    print(finaldata);

    dataValue = finaldata.map( (e) => Articles.formJson(e)).toList();
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }

  NewsProvider(){
    print('Constructor called');
    getValue();
  }

}


