import 'package:http/http.dart';
import 'package:http/http.dart'  as http;

class ApiServices {
static final ApiServices apiServices = ApiServices();

  Future<String?> getServices() async {
    String link = "https://newsapi.org/v2/top-headlines/sources?apiKey=55ea6dda67504f759ad34b03b63dbfb7";
    Uri url = Uri.parse(link);
    Response response = await http.get(url);

    if(response.statusCode == 200){
      print(response);
      return response.body;
    }
    return null;



  }

}