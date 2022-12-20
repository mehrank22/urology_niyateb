import 'package:urology_niyateb/feature/signin_feature/domain/entities/user_entities.dart';

abstract class SignInStatus {}

class SignInLoading extends SignInStatus {}

class SignInCompleted extends SignInStatus {
  final UserEntities userEntities;
  SignInCompleted(this.userEntities);
}

class SignInError extends SignInStatus {
  final String message;

  SignInError(this.message);
}
