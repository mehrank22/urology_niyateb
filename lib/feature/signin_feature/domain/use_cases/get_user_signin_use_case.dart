import 'package:urology_niyateb/core/params/user_params.dart';
import 'package:urology_niyateb/core/usecase/use_case.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/entities/user_entities.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/repository/user_repository.dart';

import '../../../../core/resources/data_state.dart';

class GetUserSignInUseCase
    extends UseCase<DataState<UserEntities>, UserParams> {
  final UserRepository userRepository;

  GetUserSignInUseCase(this.userRepository);

  @override
  Future<DataState<UserEntities>> call(UserParams param) {
    return userRepository.fetchUserData(param);
  }
}
