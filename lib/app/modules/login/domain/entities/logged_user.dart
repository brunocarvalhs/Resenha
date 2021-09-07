import 'package:equatable/equatable.dart';

class LoggedUser extends Equatable {
  final String email;
  final String name;
  final String phoneNumber;
  final String photoURL;

  LoggedUser({
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.photoURL,
  });

  @override
  List<Object?> get props => [email, name, phoneNumber];
}
