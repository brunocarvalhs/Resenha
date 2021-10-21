import 'package:equatable/equatable.dart';

class LoggedEvent extends Equatable {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime date;
  final String image;

  LoggedEvent({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.image,
  });

  @override
  List<Object?> get props => [id, title, description, category, date, image];
}
