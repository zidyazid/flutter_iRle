part of 'kuis_cubit.dart';

abstract class KuisState extends Equatable {
  const KuisState();

  @override
  List<Object> get props => [];
}

class KuisInitial extends KuisState {}

class KuisLoaded extends KuisState {
  final List<Kuis> kuis;

  KuisLoaded(this.kuis);
  @override
  List<Object> get props => [kuis];
}

class KuisLoadingFailed extends KuisState {
  final String message;

  KuisLoadingFailed(this.message);
  @override
  List<Object> get props => [message];
}
