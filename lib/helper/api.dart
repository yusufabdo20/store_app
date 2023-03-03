import 'package:http/http.dart' as http;
// import 'package:http/http.dart' ;

class Api {
  Future<http.Response> get({required String apiUrl}) async {
    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return response;
    } else {
      return throw Exception(
        "There is PROBLEM in Status Code is =! 200 ====>>>> ${response.statusCode.toString()}",
      );
    }
  }
}
