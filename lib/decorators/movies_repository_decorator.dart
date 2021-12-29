import 'dart:convert';

import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MoviesRepositoryDecorator implements MoviesRepository {
   
   final MoviesRepository _moviesRepository;

  MoviesRepositoryDecorator(this._moviesRepository);


  @override
  Future<Movies> getMovies() async  {
   return await _moviesRepository.getMovies();
  }

  
    
  
}