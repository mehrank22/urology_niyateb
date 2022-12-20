part of 'signin_bloc.dart';

@immutable
abstract class SigninEvent {}

class LoadSignIn extends SigninEvent {
  final UserParams userParams;

  LoadSignIn(this.userParams);
}
