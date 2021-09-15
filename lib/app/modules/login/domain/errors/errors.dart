abstract class Failure implements Exception {
  String? get message;
}

class ErrorLogin extends Failure {
  final String? message;
  ErrorLogin({this.message});
}

class ErrorGetLoggedUser extends Failure {
  final String? message;
  ErrorGetLoggedUser({this.message});
}

class ErrorLogout extends Failure {
  final String? message;
  ErrorLogout({this.message});
}

class NotAutomaticRetrieved implements Failure {
  final String? verificationId;
  final String? message;
  NotAutomaticRetrieved(this.verificationId, {this.message});
}

class InternalError implements Failure {
  final String? message;
  InternalError({this.message});
}
