import 'package:equatable/equatable.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent(); //not understanded why doing constructor in abstract class?!

  @override
  List<Object> get props => [];
}

class GetNowPlayingMovieEvent extends MovieEvent {}

class GetPopularMovieEvent extends MovieEvent {}

class GetTopRatedMovieEvent extends MovieEvent {}
