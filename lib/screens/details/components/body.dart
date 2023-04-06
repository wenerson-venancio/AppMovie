// ignore_for_file: sized_box_for_whitespace, use_full_hex_values_for_flutter_colors

import 'package:appmovies/models/movie.dart';
import 'package:appmovies/screens/details/components/backdrop_rating.dart';
import 'package:appmovies/screens/details/components/title_duration_fab.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        BackDropAndRating(size: size, movie: movie),
        TitleDurationAndFabBtn(movie: movie)
      ],
    );
  }
}
