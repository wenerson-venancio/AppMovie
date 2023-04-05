import 'package:appmovies/models/movie.dart';
import 'package:appmovies/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  final Movie movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie,)
    );
  }
}
