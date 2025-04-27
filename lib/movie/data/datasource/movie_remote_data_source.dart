import 'package:dio/dio.dart';
import 'package:movie_and_tvs_clean_architecture/core/error/exceptions.dart';
import 'package:movie_and_tvs_clean_architecture/core/network/api_constance.dart';
import 'package:movie_and_tvs_clean_architecture/core/network/error_message_model.dart';
import 'package:movie_and_tvs_clean_architecture/movie/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie();
  // Future<List<MovieModel>> getPopularMovie();
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(
      ApiConstance.getNowPlayingMoviePath,
      //'https://api.themoviedb.org/3/movie/now_playing?api_key=1a3e5d94936ac1fda140f9d0c72235bd'
    );

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(
        errorMessage: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
