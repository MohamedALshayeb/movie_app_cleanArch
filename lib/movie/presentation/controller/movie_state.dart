import 'package:equatable/equatable.dart';
import 'package:movie_and_tvs_clean_architecture/core/utils/enums.dart';
import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';

class MovieState extends Equatable {
  final List<Movie>
  nowPlayingMovies; // not understanded why list of movie not movieModel ?!
  final RequestState nowPlayingState;
  final String message;

  const MovieState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.message = '',
  });

  @override
  List<Object?> get props => [nowPlayingMovies, nowPlayingState, message];
}
