import 'package:dartz/dartz.dart';
import 'package:movie_and_tvs_clean_architecture/core/error/failure.dart'
    show Failure;
import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/repository/base_movie_repository.dart';

class GetTopRatedMovieUseCase {
  final BaseMovieRepository baseMovieRepository;
  GetTopRatedMovieUseCase({required this.baseMovieRepository});

  Future<Either<Failure, List<Movie>>> excute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
