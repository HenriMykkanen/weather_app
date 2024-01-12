sealed class APIException implements Exception {
  APIException(this.message);
  final String message;
}

class InvalidApiKeyException extends APIException {
  InvalidApiKeyException() : super('Invalid API key');
}

class NoInternetConnectionException extends APIException {
  NoInternetConnectionException() : super('No internet connection');
}

class CityNotFoundException extends APIException {
  CityNotFoundException() : super('City not found');
}

class UnknownException extends APIException {
  UnknownException() : super('Unknown exception occurred');
}

// A sealed class is a concept in programming languages that
// restricts the inheritance of a class to a fixed set of subclasses.
// The constructors of the subclasses are private,
// preventing the creation of instances outside of the class file.
// This restriction ensures that only the defined subclasses can be used.