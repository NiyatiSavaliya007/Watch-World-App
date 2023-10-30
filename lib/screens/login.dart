// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_world_app/constants/constants.dart';
import 'package:watch_world_app/constants/routes.dart';
import 'package:watch_world_app/screens/custom_bottom_bar.dart';
import 'package:watch_world_app/screens/sign_up.dart';
import 'package:watch_world_app/widgets/primary_button.dart';
import 'package:watch_world_app/widgets/title.dart';

import '../firebase_services/firebase_auth.dart';
//import 'package:watch_world_app/constants/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Titles(title: "Login"),
            const SizedBox(
              height: 46.0,
            ),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              controller: password,
              obscureText: isShowPassword,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: CupertinoButton(
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    padding: EdgeInsets.zero,
                  )),
            ),
            const SizedBox(
              height: 36.0,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () async {
                bool isVaildated = loginVaildation(email.text, password.text);
                if (isVaildated) {
                  bool isLogined = await FirebaseAuthHelper.instance
                      .login(email.text, password.text, context);
                  if (isLogined) {
                    Routes.instance.pushAndRemoveUntil(
                        widget: const CustomBottomBar(), context: context);
                  }
                }
              },
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Center(
              child: Text("Don't have an account?"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Center(
              child: CupertinoButton(
                  child: Text(
                    "Create an account",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    Routes.instance
                        .push(widget: const SignUpScreen(), context: context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
