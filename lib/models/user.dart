part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final String password;

  User({this.id, this.name, this.username, this.email, this.password});

  @override
  List<Object> get props => [id, name, username, email, password];
}

User mockUser = User(
    id: 1,
    email: "yakura@gmail.com",
    name: "yakura",
    username: "yakura",
    password: "qweqweqwe");
