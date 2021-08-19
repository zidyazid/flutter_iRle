part of 'materi_cubit.dart';

abstract class MateriState extends Equatable {
  const MateriState();

  @override
  List<Object> get props => [];
}

class MateriInitial extends MateriState {}

class MateriLoaded extends MateriState {
  final List<Materi> materi;

  MateriLoaded(this.materi);
  @override
  List<Object> get props => [materi];
}

class MateriLoadingFailed extends MateriState {
  final String message;

  MateriLoadingFailed(this.message);
  @override
  List<Object> get props => [message];
}
