import 'dart:convert';

import 'package:cat_facts_app/models/cat.dart';
import 'package:http/http.dart' as http;

class CatApiClient{

  static const baseUrl ="https://cat-fact.herokuapp.com";
  final http.Client httpClient = http.Client();


  Future<Cat> getFacts() async{


    final catUrl = baseUrl +"/facts";

    final respond = await httpClient.get(catUrl);

    if(respond.statusCode != 200){

      throw Exception("Cannot get any Data");
    }


    //Take body of respond decode as Json
    final respondJson = (jsonDecode(respond.body));

    return Cat.fromJson(respondJson);   

  }



}