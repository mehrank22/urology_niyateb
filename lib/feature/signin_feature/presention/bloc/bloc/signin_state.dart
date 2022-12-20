part of 'signin_bloc.dart';

class SigninState {
  final SignInStatus signInStatus;

  SigninState({required this.signInStatus});

  SigninState copyWith({SignInStatus? newsignInStatus}) {
    return SigninState(signInStatus: newsignInStatus ?? signInStatus);
  }
}
