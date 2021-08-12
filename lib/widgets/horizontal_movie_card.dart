

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../screens/movie_detail_screen.dart';
import 'package:octo_image/octo_image.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HorizontalMovieCard extends StatelessWidget {
  final MovieModel movie;

  const HorizontalMovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      width: 200.0,
      padding: EdgeInsets.only(right: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailScreen(movie: movie),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: OctoImage(
                image: CachedNetworkImageProvider(movie.image!),
                width: 200.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              movie.name!,
              maxLines: 1,
              style: _theme.textTheme.headline3,
            ),
            const SizedBox(height: 5.0),
            SmoothStarRating(
              rating: movie.rating,
              color: Color(0xFFFFA235),
              size: 15.0,
              isReadOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}
