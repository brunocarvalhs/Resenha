import 'package:equatable/equatable.dart';

class LoggedUser extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? photoUrl;

  const LoggedUser({
    required this.id,
    this.name,
    this.email,
    this.photoUrl,
  });

  @override
  List<Object> get props => [id];
}
