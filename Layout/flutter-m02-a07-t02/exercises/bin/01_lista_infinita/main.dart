import 'package:flutter/material.dart';

void main() {
  runApp(const ListaInfinita());
}

class ListaInfinita extends StatelessWidget {
  const ListaInfinita ({ Key? key }) : super(key: key);
  final int infinito = 1000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Lista \"Infinita\"",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.teal.shade900
            ),
          ),
          backgroundColor: const Color(0xFF08E0BC),
        ),

        body: ListView.builder(
          itemCount: infinito,
          itemBuilder: (context, index) {
            return Container(
              color: const Color(0xFFEEEEEE),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
              child: ListTile(
                leading: const Icon(
                  Icons.star_rounded,
                  size: 32,
                  color: Colors.amber,
                ),
                title: Text(
                  "Item n�: ${index +1}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 24,
                    color: Colors.teal.shade900
                  ),
                ),
              ),
            );
          },
        )
      ),
    );
  }
}