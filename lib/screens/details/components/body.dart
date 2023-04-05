import 'package:appmovies/models/movie.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.4 - 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(movie.poster))),
              )
            ],
          ),
        )
      ],
    );
  }
}
