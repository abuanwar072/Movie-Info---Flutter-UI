import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details/details_screen.dart';
import '../../../constants.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildMovieCard(context),
        openBuilder: (context, action) => DetailsScreen(movie: movie),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [kDefaultShadow],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(movie.poster),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            movie.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/star_fill.svg",
              height: 20,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "${movie.rating}",
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        )
      ],
    );
  }
}
