import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String errMessage;
  final int statusCode;
  final bool isSuccess;

  const ErrorMessageModel({
    required this.errMessage,
    required this.statusCode,
    required this.isSuccess,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      errMessage: json['status_message'],
      statusCode: json['status_code'],
      isSuccess: json['success'],
    );
  }

  @override
  List<Object?> get props => [errMessage, statusCode, isSuccess];
}
