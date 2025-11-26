import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key});

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  final TextEditingController inputController = TextEditingController();
  double? result;

  void convert() {
    setState(() {
      double celsius = double.tryParse(inputController.text) ?? 0;
      result = (celsius * 9 / 5) + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Converter")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter °C",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: convert,
              child: const Text("Convert"),
            ),
            const SizedBox(height: 20),
            if (result != null)
              Text(
                "Fahrenheit: ${result!.toStringAsFixed(2)}°F",
                style: const TextStyle(fontSize: 24),
              ),
          ],
        ),
      ),
    );
  }
}
