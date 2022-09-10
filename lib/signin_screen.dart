import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_intern/home/views/home_screen.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernamecontroller = TextEditingController();

  var email = '';
  var password = '';
  var username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Intern'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              _buildInput(),
              const Center(
                child: Text('This are the Answers'),
              ),
              Text('Email : $email'),
              Text('Password :$password'),
              Text('Username :$username'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInput() {
    return Column(
      children: [
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              labelText: 'Enter your Email', prefixIcon: Icon(Icons.email)),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: passwordController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              labelText: 'Enter your password',
              suffixIcon: Icon(Icons.password)),
        ),
        TextField(
          controller: usernamecontroller,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              labelText: 'Enter your username', suffixIcon: Icon(Icons.person)),
        ),
        ElevatedButton(
            onPressed: () {
              // if (emailController.text.isNotEmpty &&
              //     passwordController.text.isNotEmpty &&
              //     usernamecontroller.text.isNotEmpty) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(content: Text(emailController.text)));

              // setState(() {
              //   email = emailController.text;
              //   username = usernamecontroller.text;
              //   password = passwordController.text;
              // });

              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => HomeScreen(
                      email: emailController.text,
                      password: passwordController.text,
                      username: usernamecontroller.text))));
              // } else {
              //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //       content:
              //           Text('Please make sure all the fields are filled')));
              // }
            },
            child: const Text('Submit')),
      ],
    );
  }
}
