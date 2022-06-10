import 'package:flutter/material.dart';
import 'package:ibtikar/models/specific_person.dart';
import '../../models/person.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key, required this.personInfo, required this.person})
      : super(key: key);
  final SpecificPerson personInfo;
  final Person person;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < person.knownFor.length; i++) {
      children.add(ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
            height: 360,
            image: NetworkImage(
                "https://image.tmdb.org/t/p/w500/${person.knownFor[i].posterPath}" ??
                    "")),
      ));
      children.add(const Padding(padding: EdgeInsets.all(5.0)));
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(personInfo.name ?? ""),
                ElevatedButton(
                    onPressed: () async {
                      String url =
                          "https://image.tmdb.org/t/p/w500/${person.profilePath}";
                      await GallerySaver.saveImage(url,
                          albumName: 'popular_people');
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  "Photo Downloaded Successfully.")));
                    },
                    child: const Text("Download Image")),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Image(
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w500${personInfo.profilePath}")),
            const SizedBox(
              height: 32,
            ),
            Text("Movies"),
            const SizedBox(
              height: 32,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: children,
                )),
            const SizedBox(
              height: 32,
            ),
            Text(personInfo.biography ?? ""),
          ],
        ),
      ),
    );
  }
}
