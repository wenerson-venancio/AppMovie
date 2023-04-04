// ignore_for_file: sized_box_for_whitespace

import 'package:appmovies/screens/home/components/categories.dart';
import 'package:appmovies/screens/home/components/genres.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CategoryList(), Genres()],
    );
  }
}



