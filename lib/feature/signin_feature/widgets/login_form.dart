import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urology_niyateb/core/params/user_params.dart';
import 'package:urology_niyateb/feature/signin_feature/presention/bloc/bloc/signin_bloc.dart';
import 'package:urology_niyateb/feature/signin_feature/presention/bloc/bloc/signin_status.dart';

import '../../../core/utils/constants.dart';
import '../../../core/widgets/already_have_an_account_acheck.dart';
import '../../signup_feature/screen/signup_screen.dart';

class LoginForm extends StatefulWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: userController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "نام کاربری",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: passController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintText: "رمز عبور",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
              tag: "login_btn",
              child: ElevatedButton(onPressed: () {
                BlocProvider.of<SigninBloc>(context).add(LoadSignIn(
                    UserParams(userController.text, passController.text)));
              }, child: BlocBuilder<SigninBloc, SigninState>(
                builder: (context, state) {
                  if (state.signInStatus is SignInLoading) {
                    //print('$stTEstatus is Loading');
                  }

                  if (state.signInStatus is SignInError) {
                    print('status is error');
                  }

                  if (state.signInStatus is SignInCompleted) {
                    print('status is completed');
                  }

                  return Container(
                    child: Text(
                      "ورود",
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                },
              ))),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
