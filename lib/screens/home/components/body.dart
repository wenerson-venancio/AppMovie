// ignore_for_file: sized_box_for_whitespace

import 'package:appmovies/constants.dart';
import 'package:appmovies/models/movies.dart';
import 'package:appmovies/screens/home/components/categories.dart';
import 'package:appmovies/screens/home/components/genres.dart';
import 'package:appmovies/screens/home/components/movie_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CategoryList(), Genres(), MovieCarousel()],
    );
  }
}

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieCard(movie: movies[index]),
        ),
      ),
    );
  }
}
