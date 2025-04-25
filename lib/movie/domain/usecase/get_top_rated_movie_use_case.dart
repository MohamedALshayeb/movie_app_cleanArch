import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/repository/base_movie_repository.dart';

class GetTopRatedMovieUseCase {
  final BaseMovieRepository baseMovieRepository;
  GetTopRatedMovieUseCase({required this.baseMovieRepository});

  Future<List<Movie>> excute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
