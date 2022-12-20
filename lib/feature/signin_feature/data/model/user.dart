import 'package:urology_niyateb/feature/signin_feature/domain/entities/user_entities.dart';

class User extends UserEntities {
  const User({
    String? name,
    String? mobile,
    int? subscription,
  }) : super(name: name, subscription: subscription, mobile: mobile);

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        mobile: json["mobile"],
        subscription: json["subscription"],
      );
}
