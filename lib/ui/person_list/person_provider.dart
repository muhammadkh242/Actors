import 'package:flutter/material.dart';
import 'package:ibtikar/repository/repository.dart';

import '../../models/person.dart';

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
}
