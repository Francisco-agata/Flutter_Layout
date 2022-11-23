
import 'package:flutter/material.dart';

void main() {
  runApp(const MyNavigatorBar());
}

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Retira a "etiqueta" debug
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // Barra de �cones (inferior)
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade300,
          items: const [
            // �cone Home
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                size: 36,
              ),
            ),

            // �cone Configura��es
            BottomNavigationBarItem(
              label: "Configura��es",
              icon: Icon(
                Icons.settings,
                size: 36,
              ),
            ),

            // �cone Login
            BottomNavigationBarItem(
              label: "Login",
              icon: Icon(
                Icons.login,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}