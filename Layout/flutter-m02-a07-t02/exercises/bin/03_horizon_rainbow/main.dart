import 'package:flutter/material.dart';

void main() {
  runApp(const Rainbow());
}

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "VLAVAAV Horizontal",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.pinkAccent,
          ),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              getRainbow(),
            ],
          )),
    );
  }

  Row getRainbow() {
    return Row(
      children: [
        // Vermelho
        Container(
          width: 65,
          color: Colors.redAccent,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Vermelho',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Laranja
        Container(
          width: 65,
          color: Colors.orange,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Laranja',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Amarelo
        Container(
          width: 65,
          color: Colors.yellow,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Amarelo',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Verde
        Container(
          width: 65,
          color: Colors.green,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Verde',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Azul
        Container(
          width: 65,
          color: Colors.blue,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Azul',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Anil
        Container(
          width: 65,
          color: Colors.indigo,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Anil',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Violeta
        Container(
          width: 65,
          color: Colors.deepPurple,
          child: const Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Violeta',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}