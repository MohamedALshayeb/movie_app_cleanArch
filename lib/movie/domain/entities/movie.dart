import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String overview;
  final String backdropPath;
  final List<int> genreIds;
  final int voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.backdropPath,
    required this.genreIds,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    overview,
    backdropPath,
    genreIds,
    voteAverage,
    releaseDate,
  ];
}
