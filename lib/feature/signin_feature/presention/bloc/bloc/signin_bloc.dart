import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:urology_niyateb/core/params/user_params.dart';
import 'package:urology_niyateb/core/resources/data_state.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/use_cases/get_user_signin_use_case.dart';
import 'package:urology_niyateb/feature/signin_feature/presention/bloc/bloc/signin_status.dart';

part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final GetUserSignInUseCase getUserSignInUseCase;

  SigninBloc(this.getUserSignInUseCase)
      : super(SigninState(signInStatus: SignInLoading())) {
    on<LoadSignIn>((event, emit) async {
      emit(state.copyWith(newsignInStatus: SignInLoading()));

      DataState dataState = await getUserSignInUseCase(event.userParams);

      if (dataState is DataSuccess) {
        emit(state.copyWith(newsignInStatus: SignInCompleted(dataState.data)));
      }

      if (dataState is DataFailed) {
        emit(state.copyWith(newsignInStatus: SignInError(dataState.error!)));
      }
    });
  }
}
