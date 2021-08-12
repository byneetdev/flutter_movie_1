
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../screens/movie_detail_screen.dart';
import 'package:octo_image/octo_image.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

class VerticalMovieCard extends StatelessWidget {
  final MovieModel movie;

  const VerticalMovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(movie: movie),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: OctoImage(
                image: CachedNetworkImageProvider(movie.image!),
                width: 75.0,
                height: 75.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: SizedBox(
                height: 70.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      movie.genres!.first,
                      style: _theme.textTheme.subtitle2,
                    ),
                    Text(
                      movie.name!,
                      maxLines: 1,
                      style: _theme.textTheme.headline3,
                    ),
                    SmoothStarRating(
                      rating: movie.rating,
                      color: Color(0xFFFFA235),
                      size: 15.0,
                      isReadOnly: true,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
