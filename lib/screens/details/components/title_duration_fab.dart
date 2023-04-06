import 'package:appmovies/constants.dart';
import 'package:appmovies/models/movie.dart';
import 'package:flutter/material.dart';


class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: kDefaultPadding / 2,
              ),
              Row(
                children: [
                  Text(
                    '${movie.year}',
                    style: const TextStyle(color: kTextLightColor),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  const Text(
                    "PG-13",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  const Text(
                    "2h 32min",
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              )
            ],
          )),
          SizedBox(
            height: 64,
            width: 64,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  size: 28,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
