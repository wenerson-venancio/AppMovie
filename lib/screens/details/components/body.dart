// ignore_for_file: sized_box_for_whitespace, use_full_hex_values_for_flutter_colors

import 'package:appmovies/constants.dart';
import 'package:appmovies/models/movie.dart';
import 'package:appmovies/screens/details/components/backdrop_rating.dart';
import 'package:appmovies/screens/details/components/cast_and_crew.dart';
import 'package:appmovies/screens/details/components/genres.dart';
import 'package:appmovies/screens/details/components/title_duration_fab.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackDropAndRating(size: size, movie: movie),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
            child: Text(
              "Plot Summary",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(color: Color(0xFF737599)),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}


