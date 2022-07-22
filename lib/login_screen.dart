import 'package:flutter/material.dart';

import 'shared/components/components.dart';

//login screen
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextController = TextEditingController();

  TextEditingController passwordTextController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool _isSecuer = false;

  bool get isSecuer => _isSecuer;

  set isSecuer(bool isSecuer) {
    _isSecuer = isSecuer;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: emailTextController,
                    keyboardType: TextInputType.emailAddress,
                    // onFieldSubmitted: (value) => print(value),
                    // onChanged: (value) => print(value),
                    decoration: const InputDecoration(
                      labelText: "Enter email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: (value) {
                      if (value!.isEmpty)
                        return 'Email address must not be embty';
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordTextController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isSecuer,
                    // onFieldSubmitted: (value) => print(value),
                    // onChanged: (value) => print(value),
                    decoration: InputDecoration(
                      labelText: "Enter email",
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: (() => isSecuer = !isSecuer ),
                        child: Icon(!isSecuer
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return 'password must not be embty';
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defualtButton(
                    title: 'login',
                    background: Colors.red,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailTextController.text);
                        print(passwordTextController.text);
                      }
                    },
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defualtButton(
                    title: 'Bay',
                    function: () {
                      print(emailTextController.text);
                      print(passwordTextController.text);
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          print('Register now');
                        },
                        child: const Text(
                          'Register now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
