abstract class FailureLogin implements Exception {}

class ConnectionError extends FailureLogin {}

class ErrorGetLoggedUser extends FailureLogin {}

class ErrorLogout extends FailureLogin {}

class ErrorGoogleLogged extends FailureLogin {}

class ErrorLoggedUser extends FailureLogin {}