class ApiConstance {
  static const String baseUrl =
      'https://api.themoviedb.org/3'; //he possible has err becouse he add / in here an in path
  static const String apiKey = '1a3e5d94936ac1fda140f9d0c72235bd';

  static const String getNowPlayingMoviePath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
}
