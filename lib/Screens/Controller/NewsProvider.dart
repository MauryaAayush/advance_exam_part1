import 'dart:convert';

import 'package:advance_exam_part1/Screens/Controller/Helper/MainHelper.dart';
import 'package:flutter/foundation.dart';

class NewsProvider extends ChangeNotifier{

  Map finaldata = {};
  bool isLoading = false;

  Future<void> getValue()
  async {

    String? json = await ApiServices.apiServices.getServices();
    finaldata = jsonDecode(json!);

    print(finaldata);
  }

  NewsProvider(){
    getValue();
  }

}


