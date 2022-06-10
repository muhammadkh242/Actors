import 'package:flutter/material.dart';
import 'package:ibtikar/ui/person_list/person_provider.dart';
import 'package:ibtikar/widgets/person_widget.dart';
import 'package:provider/provider.dart';

class PersonsScreen extends StatelessWidget{
  const PersonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<PersonsProvider>(
        create: (context) => PersonsProvider(),
        child: Consumer<PersonsProvider>(
          builder: (buildContext, personsProvider, _){
            return ListView.builder(
              itemCount: personsProvider.persons.length,
              itemBuilder: (context, i){
                final person = personsProvider.persons[i];
                return PersonWidget(person: person);
              },
            );
          },
        ),
      ),
    );
    throw UnimplementedError();
  }

}
