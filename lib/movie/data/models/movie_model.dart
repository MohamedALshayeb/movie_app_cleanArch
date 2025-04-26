import 'package:movie_and_tvs_clean_architecture/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.overview,
    required super.backdropPath,
    required super.genreIds,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      voteAverage: json['vote_average'], //double in Api not int
      releaseDate: json['release_date'],
    );
  }
}
