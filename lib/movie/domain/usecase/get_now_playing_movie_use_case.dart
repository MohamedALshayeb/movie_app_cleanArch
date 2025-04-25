import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/repository/base_movie_repository.dart';

class GetNowPlayingMovieUseCase {
  final BaseMovieRepository baseMovieRepository;
  GetNowPlayingMovieUseCase({required this.baseMovieRepository});

  Future<List<Movie>> excute() async {
    return await baseMovieRepository.getNowPlayingMovies();
  }
}
