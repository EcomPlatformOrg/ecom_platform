// lib/data/model/user.dart
class User {
  final String id;
  final String oauthProvider;
  final String oauthId;
  final String username;
  final String password;
  final String email;
  final String role;
  final String profilePicture;
  final DateTime dateCreated;
  final String expiration;
  final String sub;

  User({
    required this.id,
    this.oauthProvider = '',
    this.oauthId = '',
    required this.username,
    this.password = '',
    required this.email,
    required this.role,
    this.profilePicture = '',
    required this.dateCreated,
    this.expiration = '',
    required this.sub,
  });
}
