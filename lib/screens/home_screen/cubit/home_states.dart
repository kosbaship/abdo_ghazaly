abstract class HomeStates {}

class HomeStateInitial extends HomeStates {}

class HomeStateLoading extends HomeStates {}

class HomeStateSuccess extends HomeStates {}

class HomeStateError extends HomeStates {
  final error;
  HomeStateError(this.error);
}
