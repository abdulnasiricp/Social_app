import 'package:flutter/material.dart';
import 'package:tech_media/res/components/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RoundButton(
              title: 'Login',
              onpress: () {},
              loading: false,
            ),
          ],
        ),
      ),
    );
  }
}
