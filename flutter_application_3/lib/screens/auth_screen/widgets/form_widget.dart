import 'package:flutter/material.dart';
import 'package:flutter_application_3/navigation.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _loginController = TextEditingController(text: 'admin');
  final _passwordController = TextEditingController(text: 'admin');
  void auth() {
    String login =_loginController.text;
    String password =_passwordController.text;
    if (login == 'admin' && password == 'admin') {
      final navigator = Navigator.of(context);
      navigator.push(
        MaterialPageRoute(builder: (context) => const Navigation()));
      
      print("you're welcome");
    }
    else {
      print('incorrect login or password');
    }
    setState(() {});
  }
  void resetPassword() {
    print('Лох!!!');
  }

  @override
  Widget build(BuildContext context) {
    const textFieldDecorator = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Логин'),
        const SizedBox(height: 5),
        TextField(
          controller: _loginController,
          decoration: textFieldDecorator,
        ),
        const SizedBox(height: 20),
        const Text('Пароль'),
        const SizedBox(height: 5),
        TextField(
          controller: _passwordController,
          decoration: textFieldDecorator,
          obscureText: true,
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            ElevatedButton(
              onPressed: auth, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 106, 47, 56),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
              child: const Text('Войти'),
            ),
            const SizedBox(width: 30),
            OutlinedButton(
              onPressed: resetPassword, 
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 0, 0, 0)),
              child: const Text('Забыли пароль?'),
            ),
          ],
        ),
      ],
    );
  }
}