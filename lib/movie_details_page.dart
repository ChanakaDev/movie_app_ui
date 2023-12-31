import 'package:flutter/material.dart';


import 'actor_scroller.dart';
import 'models.dart';
import 'movie_detail_header.dart';
import 'photo_scroller.dart';
import 'story_line.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage(this.movie, {super.key});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailHeader(movie),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Storyline(movie.storyline),
            ),
            PhotoScroller(movie.photoUrls),
            const SizedBox(height: 20.0),
            ActorScroller(movie.actors),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
