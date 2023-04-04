import 'package:appmovies/components/genre_card.dart';
import 'package:appmovies/constants.dart';
import 'package:flutter/material.dart';


class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Ação",
      "Ficção",
      "Comédia",
      "Terror",
      "Drama",
      "Animação",
      "Romance"
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(genre: genres[index])),
    );
  }
}
