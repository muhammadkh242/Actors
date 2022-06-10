import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/person.dart';
import '../models/specific_person.dart';
class PersonsService{
  Future<List<Person>> fetchPersons() async{
    var uri = Uri.parse("https://api.themoviedb.org/3/person/popular?api_key=bdee2da50a6d74db54386e74ecb18c4f&language=en-US&page=1");
    final response = await http.get(uri);
    //print("body${response.body}");

    if(response.statusCode == 200){
      return PersonsResponse.fromJson(json.decode(response.body)).results;
    }else{
      throw Exception('FAILED TO LOAD PERSONS');
    }
  }

  Future<SpecificPerson> fetchPerson(int id) async{
    var uri = Uri.parse("https://api.themoviedb.org/3/person/${id}?api_key=bdee2da50a6d74db54386e74ecb18c4f&language=en-US");
    final response = await http.get(uri);
    print("body${response.body}");
    if(response.statusCode == 200){
      return SpecificPerson.fromJson(json.decode(response.body));
    }else{
      throw Exception('FAILED TO LOAD PERSONS');
    }
  }
}
