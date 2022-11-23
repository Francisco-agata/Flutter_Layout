import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppBar());
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Retira a "etiqueta" debug
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // Barra de título
        appBar: AppBar(
          backgroundColor: Colors.amber.shade200,
          title: const Text(
            "Coffee",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 28,
            ),
          ),
          leading: const Icon(
            Icons.coffee,
            size: 36,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}