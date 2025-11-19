part of 'current_user_bloc.dart';

sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object> get props => [];
}

final class CurrentUserFetched extends CurrentUserEvent {}

final class CurrentUserSet extends CurrentUserEvent {
  final UserModel user;

  const CurrentUserSet(this.user);

  @override
  List<Object> get props => [user];
}
