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
  void dispose() {
    super.dispose();
    valueController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        width: 2,
        color: Theme.of(context).colorScheme.primary,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
      ),
      body: Container(
        color: Theme.of(context).copyWith().highlightColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '₹ $result',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: Theme.of(context).hintColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: TextField(
                controller: valueController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter value in USD',
                  suffixIcon: Icon(Icons.attach_money, color: Theme.of(context).hintColor),
                  enabled: true,
                  border: myBorder,
                  enabledBorder: myBorder,
                ),
                onChanged: (value) {
                  if (value.isEmpty) {
                    setState(() {
                      result = 0;
                    });
                  }
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = double.parse(valueController.text) * 81;
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'Convert',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
