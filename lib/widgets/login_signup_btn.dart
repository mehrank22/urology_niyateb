import 'package:flutter/material.dart';
import 'package:urology_niyateb/core/utils/constants.dart';

import '../feature/signin_feature/presention/screen/login_screen.dart';
import '../feature/signup_feature/screen/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
            child: const Text(
              "ورود",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryLightColor, elevation: 0),
            child: const Text(
              "ثبت نام",
              style: TextStyle(fontSize: 18, color: Colors.black),
            )),
      ],
    );
  }
}
