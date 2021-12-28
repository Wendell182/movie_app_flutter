

import 'package:dio/dio.dart';
import 'package:movie_app/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl:'https://api.themoviedb.org/4/',
        headers: {
          'content-type' : 'application/json;charset=utf-8',
          'authorization' : 
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyOWY0NDg0YWNhYmMzZTZkYTE5OTgzNWViYjczNzZlMyIsInN1YiI6IjYxY2I0YzMzMjBhZjc3MDA2MDQ2MzNhMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.gynevZzHbFsAo5xnAxPId2aor6LfZN_kegA0P2MRHhg'
        }
      )
    );
  }

}