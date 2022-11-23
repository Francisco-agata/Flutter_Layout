import 'package:flutter/material.dart';

void main() {
  runApp(const MyFixedTab());
}

class MyFixedTab extends StatelessWidget {
  const MyFixedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Retira a "etiqueta" debug
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Meu Pet: A loja do seu pet"),
            centerTitle: false,
            backgroundColor: Colors.indigo.shade300,
            leading: ClipRRect(
              child: Image.network("https://i.imgur.com/eFAr5QX.png"),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.pink,
              tabs: [
                Tab(
                  child: Text(
                    'CATIOROS',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    'GATINEOS',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    'PASSARINEOS',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
              ],),
          ),

          body: const TabBarView(
            children: [
              Center(child: Text('CATIOROS')),
              Center(child: Text('GATINEOS')),
              Center(child: Text('PASSARINEOS')),
            ],
          ),
        ),
      ),
    );
  }
}