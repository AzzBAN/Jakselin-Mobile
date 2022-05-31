import 'dart:convert';

User UserFromJson(String str) => User.fromJson(json.decode(str));

String UserToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.email,
    required this.name,
    required this.nohp,
    required this.username,
    required this.password,
    required this.avatar,
    required this.isAdmin,
    this.createdAt,
    this.updatedAt,
  });

  String id;
  String email;
  String name;
  String nohp;
  String username;
  String password;
  String avatar;
  String isAdmin;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        name: json["name"],
        nohp: json["nohp"],
        username: json["username"],
        password: json["password"],
        avatar: json["avatar"],
        isAdmin: json["is_admin"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
        "nohp": nohp,
        "username": username,
        "password": password,
        "avatar": avatar,
        "is_admin": isAdmin,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
