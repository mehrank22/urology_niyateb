import 'package:dio/dio.dart';
import 'package:urology_niyateb/core/utils/constants.dart';

class ApiServiceSignIn {
  final Dio dio = Dio();

  Future<dynamic> userInfo(user, pass) async {
    FormData formData = FormData.fromMap({'user': user, 'pass': pass});
    var response = await dio.post('${baseUrl}signin.php', data: formData);
    print(response.toString());
    return response;
  }
}
