class User {
  final String id;
  final String name;
  final UserRole role;
  final String email;
  const User({
    required this.id,
    required this.name,
    required this.role,
    required this.email,
  });

  factory User.fromMap(Map<String, dynamic> userMap) {
    return User(
      id: userMap['id'],
      name: userMap['name']??'',
      role: UserRole.values.firstWhere((val)=>val.name==userMap['role'],orElse: ()=>UserRole.user),
      email: userMap['email'],
    );
  }
}

enum UserRole { user ,organizer }
