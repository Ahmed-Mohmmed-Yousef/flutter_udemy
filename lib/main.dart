import 'package:flutter/material.dart';
import 'package:flutter_udemy/login_screen.dart';
import 'package:flutter_udemy/massenger_screen.dart';

void main() {
  MyApp app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MassengerScreen(),
      debugShowCheckedModeBanner: false,
      // done
    );
  }

}
