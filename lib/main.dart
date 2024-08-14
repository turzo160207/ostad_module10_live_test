import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylingApp(),
    );
  }
}

class TextStylingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            const Text(
              'Experiment with text styles',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(height: 12),
            // SizedBox(height: 12),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('You clicked the button!'),
                    backgroundColor: Colors.blue,
                  ),
                );
              },
              child: const Text('Click Me'),
            ),
            const Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16, // customize font size
                      fontWeight: FontWeight.normal, // customize font weight
                    ),
                  ),
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
