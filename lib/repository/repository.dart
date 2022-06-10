


import 'package:ibtikar/remote/person_service.dart';

import '../models/person.dart';
import '../models/specific_person.dart';

class PersonsRepository{
  final PersonsService _personsService = PersonsService();

  Future<List<Person>> fetchPersons() async{
    final persons = await _personsService.fetchPersons();
    return persons;
  }

  Future<SpecificPerson> fetchPersonInfo(int id) async{
    final info = await _personsService.fetchPerson(id);
    return info;
  }

}


