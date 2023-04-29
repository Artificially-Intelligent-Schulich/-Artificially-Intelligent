import 'package:http/http.dart' as http;
import 'dart:convert';

class Name {
  final String first;
  final String last;

  const Name({
    required this.first,
    required this.last,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(first: json['first'], last: json['last']);
  }
}

class User {
  final String email;
  final String picture;
  final Name name;

  const User({
    required this.email,
    required this.picture,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        email: json['email'],
        picture: json['picture']['medium'],
        name: Name.fromJson(json['name']));
  }
}

class UserService {
  Future<List<User>> getUser() async {
    final response = await http
        .get(Uri.parse("https://randomuser.me/api?results=50&seed=galaxies"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final List<User> list = [];

      for (var i = 0; i < data["results"].length; i++) {
        final entry = data["results"][i];
        list.add(User.fromJson(entry));
      }
      return list;
    } else {
      throw Exception("Failed");
    }
  }
}