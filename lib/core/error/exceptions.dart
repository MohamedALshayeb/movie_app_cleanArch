import 'package:movie_and_tvs_clean_architecture/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessage;
  const ServerException({required this.errorMessage});
}

// class LocalDatabaseException implements Exception {
//   final String message;
//   const LocalDatabaseException({required this.message});
// }
