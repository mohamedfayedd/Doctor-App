import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/core/routes/routes_name.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  RegExp emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  RegExp passRegex = RegExp(r'^[a-zA-Z0-9]{6,20}$');

  bool _validateEmail(String email) {
    return emailRegex.hasMatch(email);
  }

  bool _validatePassword(String password) {
    return passRegex.hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ' Sign In',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Don't have an account?  ",
                    style: TextStyle(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20, color: Color(0xFF255ED6)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email*',
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 19),
                  hintStyle: TextStyle(fontSize: 19),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password*',
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 19),
                    hintStyle: TextStyle(fontSize: 19),
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forget your password?',
                    style: TextStyle(fontSize: 20, color: Color(0xFF255ED6)),
                  )),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_validateEmail(_emailController.text) &&
                      _validatePassword(_passController.text)) {
                    Navigator.of(context).pushNamed(RoutesName.Home);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            'خطأ',
                            style: TextStyle(fontSize: 22),
                          ),
                          content: const Text(
                            'يرجى إدخال بريد إلكتروني وكلمة مرور صحيحة.',
                            style: TextStyle(fontSize: 17),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'حسناً',
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xFF255ED6),
                      borderRadius: BorderRadius.circular(10)),
                  height: 60,
                  width: 400,
                  child: const Text(
                    textAlign: TextAlign.center,
                    ' Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
