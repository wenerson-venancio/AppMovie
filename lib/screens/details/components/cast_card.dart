import 'package:appmovies/constants.dart';
import 'package:flutter/material.dart';




class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(cast['image']))),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
            maxLines: 3,
          ),
          const SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: kTextLightColor),
          )
        ],
      ),
    );
  }
}
