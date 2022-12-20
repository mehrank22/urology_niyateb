import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:urology_niyateb/core/params/user_params.dart';
import 'package:urology_niyateb/feature/signin_feature/data/data_source/remote/api_service_signin.dart';
import 'package:urology_niyateb/feature/signin_feature/data/model/user.dart';
import 'package:urology_niyateb/core/resources/data_state.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/entities/user_entities.dart';
import 'package:urology_niyateb/feature/signin_feature/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  ApiServiceSignIn apiServiceSignIn;

  UserRepositoryImpl(this.apiServiceSignIn);

  @override
  Future<DataState<UserEntities>> fetchUserData(UserParams param) async {
    try {
      Response response =
          await apiServiceSignIn.userInfo(param.user, param.pass);
      if (response.statusCode == 200) {
        UserEntities userEntities = User.fromJson(jsonDecode(response.data));

        return DataSuccess(userEntities);
      } else {
        return DataFailed('مشکلی پیش آمده دوباره سعی کنید');
      }
    } catch (e) {
      return DataFailed('لطفا اتصال اینترنت خود را بررسی کنید');
    }
  }
}
