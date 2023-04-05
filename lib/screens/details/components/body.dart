// ignore_for_file: sized_box_for_whitespace, use_full_hex_values_for_flutter_colors

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
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                        image: AssetImage(movie.backdrop), fit: BoxFit.cover)),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: size.width * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 5),
                              blurRadius: 50,
                              color: const Color(0xff121553d).withOpacity(0.3))
                        ]),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
