part of 'models.dart';

class Status {
  final int id;
  final User user;
  final int idMateri;
  final int score;

  Status({this.id, this.user, this.idMateri, this.score});

  @override
  List<Object> get props => [id, user, idMateri, score];
}

List<Status> mockStatus = [
  Status(id: 1, user: mockUser, idMateri: 1, score: 120),
  Status(id: 2, user: mockUser, idMateri: 2, score: 120),
  Status(id: 3, user: mockUser, idMateri: 3, score: 120),
];
