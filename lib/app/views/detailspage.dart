// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/character_model.dart';

class DetailsPage extends StatelessWidget {
  Character characters;
  DetailsPage({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black26,
        elevation: 0,
        centerTitle: true,
        title: Text(
          characters.name!,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 26),
            Hero(
              tag: characters.name!,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ]),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: characters.image!,
                      height: 250,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              characters.name.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
            const SizedBox(height: 16),
            Text(
              characters.actor!,
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.house.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              'Character Alive: ${characters.alive.toString()}',
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.dateOfBirth.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.alternateActors.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.alternateNames.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.ancestry.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.eyeColour.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.hairColour.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.gender.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.hogwartsStaff.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.species.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.wand.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.patronus.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.hogwartsStudent.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.hogwartsStudent.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              characters.yearOfBirth.toString(),
              style: const TextStyle(fontSize: 15, color: Colors.black54),
              maxLines: 2,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
