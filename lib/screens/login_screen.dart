import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passowordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username'),
            TextField(
              controller: _usernameController,
            ),
            Text('Password'),
            TextField(
              controller: _passowordController,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: ElevatedButton(onPressed: () {}, child: Text('Login')))
          ],
        ),
      ),
    );
  }
}
