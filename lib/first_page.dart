import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneContoller = TextEditingController();

  void onSubmit() {
    bool status = formKey.currentState?.validate() ?? false;
    if (status) {
      print('continue progress');
    } else {
      print('has error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Center(
              child: IconButton(
                iconSize: 80,
                icon: const Icon(
                  Icons.abc,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ),
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () {
                exit(0);
              },
              child: const Text(
                'quit',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                validator: (value) {
                  value = '$value@gmail.com';
                  final emailRegex = RegExp(
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$");
                  final status = emailRegex.hasMatch(value ?? '');
                  if (status) {
                    return null;
                  } else {
                    return 'please check your email address';
                  }
                },
                controller: emailController,
                decoration: InputDecoration(
                  label: Text(
                    'email',
                    style: TextStyle(color: Colors.grey),
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelStyle: TextStyle(color: Colors.green),
                  labelStyle: TextStyle(color: Colors.green),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                      // gapPadding: 50,
                      ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.green,
                  ),
                  suffix: Text(
                    '@gmail.com',
                  ),
                  hintText: 'username',
                ),
                cursorColor: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: TextFormField(
                validator: ((value) {
                  final phoneRegex =
                      RegExp(r"^[(]?[0-9]{3}[)]?[0-9]{3}[0-9]{4,5}$");
                  final status = phoneRegex.hasMatch(value ?? '');
                  if (status) {
                    return null;
                  } else {
                    return 'please check your phone number';
                  }
                }),
                keyboardType: TextInputType.number,
                controller: phoneContoller,
                decoration: InputDecoration(
                  label: Text(
                    'phone',
                    style: TextStyle(color: Colors.grey),
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelStyle: TextStyle(color: Colors.green),
                  labelStyle: TextStyle(color: Colors.green),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                      // gapPadding: 50,
                      ),
                  prefixIcon: Icon(
                    Icons.phone_outlined,
                    color: Colors.green,
                  ),
                  hintText: '9876550364',
                ),
                cursorColor: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                validator: ((value) {
                  final passwordRegex = RegExp(
                      r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$");
                  final status = passwordRegex.hasMatch(value ?? '');
                  if (status) {
                    return null;
                  } else {
                    return 'please check your password';
                  }
                }),
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text(
                    'password',
                    style: TextStyle(color: Colors.grey),
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelStyle: TextStyle(color: Colors.green),
                  labelStyle: TextStyle(color: Colors.green),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                      // gapPadding: 50,
                      ),
                  suffixIcon: IconButton(
                    color: Colors.green,
                    icon: Icon(Icons.visibility_off),
                    onPressed: () {},
                  ),
                  prefixIcon: Icon(
                    Icons.security_rounded,
                    color: Colors.green,
                  ),
                  hintText: 'P@ssw0rd',
                ),
                cursorColor: Colors.green,
              ),
            ),
            OutlinedButton(
              onPressed: onSubmit,
              child: Text(
                'submit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
