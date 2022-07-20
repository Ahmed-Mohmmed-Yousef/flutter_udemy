import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  int get count => _count;

  set count(int count) {
    setState(() {
      _count = count;
      print('count is $_count');
      print('new state');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text(
                'Plus',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              onPressed: () => count++,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '$count',
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              child: const Text(
                'Minus',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              onPressed: () => count--,
            ),
          ],
        ),
      ),
    );
  }
}
