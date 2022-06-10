
import 'package:flutter/material.dart';
import 'package:ibtikar/models/specific_person.dart';

import '../../repository/repository.dart';

class InfoProvider extends ChangeNotifier{
  int id;
  InfoProvider(this.id){
    getPersonInfo(id);
  }

  SpecificPerson info = SpecificPerson();
  
  
  final PersonsRepository _personsRepository = PersonsRepository();
   void getPersonInfo(int id){
     _personsRepository.fetchPersonInfo(id).then((incomingInfo){
       info = incomingInfo;
       notifyListeners();
     });
   }
}
/*
class PersonsProvider extends ChangeNotifier {
  List<Person> persons = [];
  final PersonsRepository _personsRepository = PersonsRepository();

  PersonsProvider() {
    getPersons();
  }

  void getPersons() {
    _personsRepository.fetchPersons().then((incomingPersons) {
      persons = incomingPersons;
      notifyListeners();
    });
  }
}*/