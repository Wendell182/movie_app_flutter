import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .55,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: movie.id,
                  child: Image.network(
                    API.REQUEST_IMG(movie.posterPath),
                    loadingBuilder: (_, child, progress) {
                      if (progress == null) return child;
                      return CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                movie.overview,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.title),
                  Text(movie.originalTitle),
                ],
              ),

              SizedBox(
                height: 8.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.date_range_sharp),
                  Text(movie.releaseDate),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
