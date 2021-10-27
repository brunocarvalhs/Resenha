import 'package:equatable/equatable.dart';

class LoggedCategory extends Equatable {
  final String id;
  final String name;

  const LoggedCategory({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
