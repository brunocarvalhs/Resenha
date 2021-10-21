abstract class Failure implements Exception {
  String? get message;
}

class ErrorSelect extends Failure {
  final String? message;
  ErrorSelect({this.message});
}

class ErrorSelectAll extends Failure {
  final String? message;
  ErrorSelectAll({this.message});
}

class ErrorCreate extends Failure {
  final String? message;
  ErrorCreate({this.message});
}

class ErrorUpdate extends Failure {
  final String? message;
  ErrorUpdate({this.message});
}

class ErrorRemove extends Failure {
  final String? message;
  ErrorRemove({this.message});
}
