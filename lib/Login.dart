import 'package:doctor/Homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Color.fromARGB(255, 84, 122, 206),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                if (usernameController.text == "hanan" &&
                    passwordController.text == "123")
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                else
                  print("no");
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
