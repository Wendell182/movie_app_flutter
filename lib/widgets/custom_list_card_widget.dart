import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        children: [
          Image.network(API.REQUEST_IMG(movie.posterPath)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline6,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Popularidade' + movie.popularity.toString()),
                SizedBox(
                  height: 10.0,
                ),
                Text('Votos' + movie.voteAverage.toString())
              ],
            ),
          ))
        ],
      ),
    );
  }
}
