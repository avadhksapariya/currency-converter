import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController valueController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
      ),
      body: Container(
        color: Theme.of(context).copyWith().highlightColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: valueController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter value in USD',
                  suffixIcon: Icon(Icons.monetization_on_outlined),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(valueController.text) * 81;
                  });
                },
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
