import 'package:dio/dio.dart';
import 'package:movie_and_tvs_clean_architecture/movie/data/models/movie_model.dart';

class MovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=1a3e5d94936ac1fda140f9d0c72235bd',
    );

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data['results'] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      return []; //will edit later
    }
  }
}
