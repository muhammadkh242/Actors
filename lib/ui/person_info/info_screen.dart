import 'package:flutter/material.dart';
import 'package:ibtikar/ui/person_info/info_provider.dart';
import 'package:ibtikar/widgets/info_widget.dart';

import '../../models/person.dart';
import 'package:provider/provider.dart';

class PersonInfoScreen extends StatelessWidget{

  final Person person;
  const PersonInfoScreen({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<InfoProvider>(
        create: (context) => InfoProvider(person.id),
        child: Consumer<InfoProvider>(
          builder: (buildContext, infoProvider, _){
            //infoProvider.getPersonInfo(person.id);
            print(infoProvider.info);
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, i){
                return InfoWidget(personInfo: infoProvider.info, person: person,);

              },
            );
            },
        ),

      ),
      /*
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                      tag: person.name,
                      child: Image(image: NetworkImage("https://image.tmdb.org/t/p/w500${person.profilePath}"))
                  )
              ),
              const SizedBox(height: 12,),
              Text("Name: ${person.name}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500,)),
              const SizedBox(height: 12,),
              Text("Category:${person.known_for_department}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500,)),
              const SizedBox(height: 12,),
            ]

          ),


        ),
      ),
    */);

  }

}

