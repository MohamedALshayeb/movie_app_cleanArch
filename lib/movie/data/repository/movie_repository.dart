import 'package:dartz/dartz.dart';
import 'package:movie_and_tvs_clean_architecture/core/error/exceptions.dart';
import 'package:movie_and_tvs_clean_architecture/core/error/failure.dart';
import 'package:movie_and_tvs_clean_architecture/movie/data/datasource/movie_remote_data_source.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/repository/base_movie_repository.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository({required this.baseMovieRemoteDataSource});
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(message: failure.errorMessage.errMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.errorMessage.errMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovie();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(message: failure.errorMessage.errMessage));
    }
  }
}
