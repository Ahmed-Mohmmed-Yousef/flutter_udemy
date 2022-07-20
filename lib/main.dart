import 'package:flutter/material.dart';
import 'counter_screen.dart';

void main() {
  MyApp app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
      // done
    );
  }

}
