class AppException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppException([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad Request', url);
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String? url])
      : super(message, 'Fetch Data - Unable To Process', url);
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message, String? url])
      : super(message, 'Time Out - Not Responding', url);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'UnAuthorized - Not Allowed', url);
}

class UnableToProcessException extends AppException {
  UnableToProcessException([String? message, String? url])
      : super(message, 'Unable To Process Data', url);
}
