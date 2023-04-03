// ignore_for_file: sized_box_for_whitespace

import 'package:appmovies/constants.dart';
import 'package:appmovies/screens/home/components/categories.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CategoryList(), Genres()],
    );
  }
}

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
          itemBuilder: (context, index) => Text(genres[index])),
    );
  }
}
