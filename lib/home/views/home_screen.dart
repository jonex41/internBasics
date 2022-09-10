import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.email,
    required this.password,
    required this.username,
  });
  final String email;
  final String password;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(username),
        ),
        body: ListView(
          children: [Text(password), Text(email)],
        ));
  }
}
