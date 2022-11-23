import 'package:flutter/material.dart';

void main() {
  runApp(const MenuDrawer());
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Retira a "etiqueta" debug
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        // Barra de t�tulo
        appBar: AppBar(
          backgroundColor: Colors.pink,
          iconTheme: IconThemeData(
            color: Colors.pink.shade100,
            size: 36,
          ),
          title: Text(
            "Menu Drawer",
            style: TextStyle(
              color: Colors.pink.shade100,
              fontSize: 24,
            ),
          ),
        ),

        // Menu de op��es
        endDrawer: Drawer(
          backgroundColor: Colors.pink.shade50,
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              // Item 1
              ListTile(
                title: const Text("Flutter"),
                subtitle: const Text("Tudo s�o Widgets"),
                leading: const Icon(
                  Icons.flash_on,
                  color: Colors.blue,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  // Aqui vai o c�digo do m�todo...
                },
              ),

              // Item 2
              ListTile(
                title: const Text("Dart"),
                subtitle: const Text("� muito forte"),
                leading: const Icon(
                  Icons.mood,
                  color: Colors.redAccent,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  // Aqui vai o c�digo do m�todo...
                },
              ),

              // Item 3
              ListTile(
                title: const Text("Cafess�neo"),
                subtitle: const Text("Quero caf���"),
                leading: const Icon(
                  Icons.coffee,
                  color: Colors.brown,
                  size: 36,
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  // Aqui vai o c�digo do m�todo...
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}