import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:readmore/readmore.dart';

import '../models/movie_model.dart';

class MovieDetailScreen extends StatelessWidget {
  final MovieModel movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Details Movie', style: _theme.textTheme.headline2),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.bookmark_border_outlined),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        children: [
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: OctoImage(
                image: CachedNetworkImageProvider(movie.image!),
                height: 500.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Text(movie.name ?? '', style: _theme.textTheme.headline1),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Text('Director: ${movie.director} | ',
                  style: _theme.textTheme.bodyText1),
              Icon(
                Icons.star,
                color: Color(0xFFFFA235),
                size: 14.0,
              ),
              Text(' ${movie.rating}', style: _theme.textTheme.bodyText1)
            ],
          ),
          const SizedBox(height: 15.0),
          Container(
            width: double.infinity,
            height: 40.0,
            child: ListView.builder(
              itemCount: movie.genres?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var _genre = movie.genres![index];
                return Container(
                  height: 40.0,
                  margin: EdgeInsets.only(right: 12.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF252932),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    _genre,
                    style: _theme.textTheme.bodyText2,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 25.0),
          Text('Storyline', style: _theme.textTheme.headline1),
          const SizedBox(height: 8.0),
          ReadMoreText(
            movie.storyLine!,
            style: _theme.textTheme.subtitle1,
            trimLines: 2,
            colorClickableText: _theme.primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: _theme.textTheme.bodyText2,
            lessStyle: _theme.textTheme.bodyText2,
          ),
          const SizedBox(height: 100.0),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        height: 50.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Watch Movie',
            style: _theme.textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
