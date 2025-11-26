import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onStart;

  const WelcomeScreen({super.key, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.thermostat, color: Colors.white, size: 80),
            const SizedBox(height: 20),
            const Text(
              "Welcome !",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: onStart,
              child: const Text("Start to convert"),
            ),
          ],
        ),
      ),
    );
  }
}
