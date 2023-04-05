import 'package:appmovies/constants.dart';
import 'package:appmovies/models/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Expanded(
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [kDefaultShadown],
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(movie.poster))),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(movie.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/star_fill.svg',
                height: 20,
              ),
              const SizedBox(
                width: kDefaultPadding / 2,
              ),
              Text(
                '${movie.rating}',
                style: const TextStyle(fontSize: 13),
              )
            ],
          )
        ],
      ),
    );
  }
}
