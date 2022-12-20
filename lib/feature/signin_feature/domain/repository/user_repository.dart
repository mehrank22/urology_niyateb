import 'package:urology_niyateb/core/params/user_params.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/entities/user_entities.dart';

import '../../../../core/resources/data_state.dart';

abstract class UserRepository {
  Future<DataState<UserEntities>> fetchUserData(UserParams param);
}
