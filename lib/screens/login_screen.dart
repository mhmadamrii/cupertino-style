import 'package:cupertino_style/services/auth_service.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  void _login() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    bool isLoggedIn = await _authService.login(username, password);

    if (isLoggedIn) {
      Navigator.pushNamed(context, '/home');
    } else {
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Login failed"),
            content: Text("Invalid username or password"),
            actions: [
              CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              controller: _usernameController,
              placeholder: 'username',
            ),
            const SizedBox(
              height: 15,
            ),
            CupertinoTextField(
              controller: _passwordController,
              placeholder: 'password',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: CupertinoButton.filled(
                    child: Text("Login"),
                    onPressed: _login,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
