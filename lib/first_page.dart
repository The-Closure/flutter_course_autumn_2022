import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_course_autumn_2022/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
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
                keyboardType: TextInputType.number,
                // controller: emailController,
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
                keyboardType: TextInputType.text,
                obscureText: true,
                // controller: emailController,
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
          ],
        ),
      ),
    );
  }
}
