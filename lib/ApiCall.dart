import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dioapi/todo.dart';
class ApiManager {
  Future<List<Information>> fetchData() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/todos"));
    if (response.statusCode == 200){
      var result = jsonDecode(response.body);
      List jsonResponse = result["todos"] as List;
      return jsonResponse.map((e) => Information.fromJson(e)).toList();
    }
    else
    {
      throw Exception(response.reasonPhrase);
    }
  }
}
