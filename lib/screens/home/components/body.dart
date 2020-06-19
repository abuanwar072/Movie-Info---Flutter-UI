import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/components/genre_card.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'dart:math' as math;

import 'categories.dart';
import 'genres.dart';
import 'movie_card.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
