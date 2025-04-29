import 'package:dartz/dartz.dart';
import 'package:movie_and_tvs_clean_architecture/core/error/failure.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
