import 'api_exception.dart';

class NetworkException extends ApiException {
  NetworkException() : super("No Internet Connection");
}