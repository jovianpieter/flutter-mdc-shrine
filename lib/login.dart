import 'package:flutter/material.dart';
import 'package:shrine/home.dart';

import 'colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Icon(Icons.diamond_outlined, size: 80.0, color: Colors.black),
                const SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            const SizedBox(height: 120.0),

            TextField(
              controller: _username,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _password,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,

              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _username.clear();
                    _password.clear();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: kShrineBrown900,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),

                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const homePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: kShrineBrown900,
                    backgroundColor: kShrinePink100,
                    elevation: 8.0,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
