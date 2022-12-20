import 'package:get_it/get_it.dart';
import 'package:urology_niyateb/feature/signin_feature/data/data_source/remote/api_service_signin.dart';
import 'package:urology_niyateb/feature/signin_feature/data/repository/user_repository_impl.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/repository/user_repository.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/use_cases/get_user_signin_use_case.dart';
import 'package:urology_niyateb/feature/signin_feature/presention/bloc/bloc/signin_bloc.dart';

GetIt locator = GetIt.instance;

setup() {
  locator.registerSingleton<ApiServiceSignIn>(ApiServiceSignIn());

  locator.registerSingleton<UserRepository>(UserRepositoryImpl(locator()));

  locator
      .registerSingleton<GetUserSignInUseCase>(GetUserSignInUseCase(locator()));

  locator.registerSingleton<SigninBloc>(SigninBloc(locator()));
}
