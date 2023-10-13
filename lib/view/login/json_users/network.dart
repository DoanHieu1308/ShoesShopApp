import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:untitled/view/login/json_users/users.dart';
import 'package:http/http.dart' as http;

List<Users> parsePost(String reponseBody){
  var list = json.decode(reponseBody) as List<dynamic>;
  List<Users> posts = list.map((model) => Users.fromJson(model)).toList();
  return posts;
}

Future<List<Users>> fetchPost() async{
  final response = await http.get(Uri.parse('http://localhost:4433/login.php'));
  if(response.statusCode == 200){
    return compute(parsePost, response.body);
  }else{
    throw Exception("Request API Error");
  }
}