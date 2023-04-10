import 'package:appmovies/constants.dart';
import 'package:appmovies/screens/details/components/cast_card.dart';
import 'package:flutter/material.dart';


class CastAndCrew extends StatelessWidget {
  final List casts;

  const CastAndCrew({super.key, required this.casts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Cast & Crew",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          )
        ],
      ),
    );
  }
}
