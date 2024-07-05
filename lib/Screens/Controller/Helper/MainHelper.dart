
import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart'  as http;

class ApiServices {

static final ApiServices apiServices = ApiServices();

  Future<List> getServices() async {
    String link = "https://newsapi.org/v2/everything?q=tesla&from=2024-06-28&sortBy=publishedAt&apiKey=55ea6dda67504f759ad34b03b63dbfb7";
    Uri url = Uri.parse(link);
    Response response = await http.get(url);
    print('temp---------------------------------------------------------------------------');

    if(response.statusCode == 200){

      Map result = jsonDecode(response.body);

      print('done---------------------------------------------------------------------------');
      return result['articles'];
    }
    else{
      throw "Error in api";
    }
  }

}