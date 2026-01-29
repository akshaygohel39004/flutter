import 'api_exception.dart';

class DataFormatException extends ApiException {
  DataFormatException() : super("Invalid Data Format");
}