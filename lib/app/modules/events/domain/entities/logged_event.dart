import 'package:equatable/equatable.dart';

class LoggedEvent extends Equatable {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime date;
  final String image;
  final bool private;
  final bool invite;
  final List<dynamic> members;
  final double latitude;
  final double longitude;

  const LoggedEvent({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.image,
    required this.private,
    required this.invite,
    required this.members,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        category,
        date,
        image,
        private,
        invite,
        members,
        latitude,
        longitude,
      ];
}
