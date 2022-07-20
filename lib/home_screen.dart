import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.amber,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('First Apps'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: notification,
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              print("Seach");
            },
          ),
        ],
      ),
      body: Container(), 
      );
  }

  void notification() {
    print("Tapped");
  }
}
