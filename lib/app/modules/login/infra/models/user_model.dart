import 'dart:convert';

import 'package:resenha/app/modules/login/domain/entities/logged_user.dart';
import 'package:resenha/app/modules/login/domain/entities/logged_user_info.dart';

class UserModel extends LoggedUser implements LoggedUserInfo {
  const UserModel({
    String? name,
    required String email,
    String? photoUrl,
  }) : super(
          name: name,
          email: email,
          photoUrl: photoUrl,
        );

  @override
  UserModel copyWith({
    String? email,
    String? name,
    String? photoUrl,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      name: map['name'] as String,
      photoUrl: map['photoUrl'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
