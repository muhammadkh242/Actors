

import 'package:flutter/material.dart';
import 'package:ibtikar/ui/person_info/info_screen.dart';
import '../models/person.dart';

class PersonWidget extends StatelessWidget {
  const PersonWidget({Key? key, required this.person}) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PersonInfoScreen(
                  person: person,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          elevation: 22,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                    child: Text(
                  person.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  //style: const TextStyle(fontFamily: 'Lobster'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: person.name,
                          child: Image(
                            image: NetworkImage("https://image.tmdb.org/t/p/w500${person.profilePath}"),
                            height: 300,
                            width: 200,
                          ),
                        ),
                    ),
                  ),
              )],
          ),
        ),
      ),
    );
  }
}

/*
class PeopleListWidget extends StatelessWidget {
  const PeopleListWidget({Key? key, required this.person}) : super(key: key);

  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        child: Card(
          elevation: 6.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Hero(
                tag: "${person.results![0].name}",
                child: Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(""),
                      fit: BoxFit.fitWidth,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Flexible(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          person.results![0].name as String,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                          //TextStyle(fontWeight: FontWeight.bold)
                        ),
                      ),
                      Text(
                        person.results![0].name as String,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        softWrap: false,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
            ],
          ),
        ),
       /* onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MoviesScreenDetails(movie)));
        },*/
      ),
    );
  }
}
 */

/*
class PersonWidget extends StatelessWidget {
  const PersonWidget({Key? key, required this.person}) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {/*
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MovieDetailsScreen(
                  movie: movie,
                )));*/
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          elevation: 22,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                    child: Text(
                  person.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  //style: const TextStyle(fontFamily: 'Lobster'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: person.name,
                          child: Image(
                            image: NetworkImage("https://image.tmdb.org/t/p/w500${person.profilePath}"),
                            height: 300,
                            width: 200,
                          ),
                        ),
                    ),
                  ),
              )],
          ),
        ),
      ),
    );
  }
}
 */