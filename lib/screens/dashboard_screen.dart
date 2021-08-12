

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../widgets/horizontal_movie_card.dart';
import '../widgets/vertical_movie_card.dart';
import 'package:octo_image/octo_image.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    const String _imgProfile =
        'https://i.pinimg.com/564x/7c/7f/94/7c7f94722aad3469ee691074772b505c.jpg';

    return Stack(
      children: [
        //BUILD MAIN CONTENT
        Positioned.fill(
          top: 120.0,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Movie', style: _theme.textTheme.headline1),
                    Text('See more', style: _theme.textTheme.subtitle1),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                width: double.infinity,
                height: 310.0,
                child: ListView.builder(
                  itemCount: topMovieList.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  itemBuilder: (context, index) {
                    var _movie = topMovieList[index];
                    return HorizontalMovieCard(movie: _movie);
                  },
                ),
              ),
              const SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('TV Series', style: _theme.textTheme.headline1),
                    Text('See more', style: _theme.textTheme.subtitle1),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              ListView.builder(
                itemCount: topMovieList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                itemBuilder: (context, index) {
                  var _movie = topMovieList[index];
                  return VerticalMovieCard(movie: _movie);
                },
              )
            ],
          ),
        ),

        // BUILD APPBAR
        _BuildAppBar(imgProfile: _imgProfile)
      ],
    );
  }
}

class _BuildAppBar extends StatelessWidget {
  final String imgProfile;

  const _BuildAppBar({Key? key, required this.imgProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Positioned(
      top: 18.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        color: _theme.backgroundColor,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 18.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: OctoImage(
              image: CachedNetworkImageProvider(imgProfile),
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            'Good Morning',
            style: _theme.textTheme.subtitle2,
          ),
          subtitle: Text(
            'Roxie',
            style: _theme.textTheme.headline2,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ),
      ),
    );
  }
}
