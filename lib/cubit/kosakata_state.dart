part of 'kosakata_cubit.dart';

abstract class KosakataState extends Equatable {
  const KosakataState();

  @override
  List<Object> get props => [];
}

class KosakataInitial extends KosakataState {}

class KosakataLoaded extends KosakataState {
  final List<KosaKata> kosakata;

  KosakataLoaded(this.kosakata);
  @override
  List<Object> get props => [kosakata];
}

class KosakataLoadingFailed extends KosakataState {
  final String message;

  KosakataLoadingFailed(this.message);
  @override
  List<Object> get props => [message];
}
