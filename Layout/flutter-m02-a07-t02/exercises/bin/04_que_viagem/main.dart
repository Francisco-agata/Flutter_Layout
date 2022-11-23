import 'package:flutter/material.dart';

void main() {
  runApp(const QueViagem());
}

class QueViagem extends StatefulWidget {
  const QueViagem({Key? key}) : super(key: key);

  @override
  State<QueViagem> createState() => _QueViagemState();
}

class _QueViagemState extends State<QueViagem> {
  Color corBase = Colors.blue.shade800;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Retira a "etiqueta" debug
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Que Viagem! Turismo",
              style: TextStyle(
                fontSize: 28,
                color: corBase,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber.shade600,
            bottom: TabBar(
              indicatorColor: corBase,
              tabs: [
                setTab("VOOS", Icons.flight_rounded),
                setTab("PASSEIOS", Icons.shopping_bag),
                setTab("MAPA", Icons.explore_rounded),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              setVoo(),
              setPasseio(),
              setMapa(),
            ],
          ),
        ),
      ),
    );
  }

  Tab setTab(String titulo, IconData icone) {
    return Tab(
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 18,
          color: corBase,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: Icon(
        icone,
        size: 36,
        color: corBase,
      ),
    );
  }

  Container setVoo() {
    return Container(
      padding: const EdgeInsets.all(45),
      child: Column(
        children: [
          const Text(
            "PARTIDA",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text("Abril 26, 2022"),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    "GRU",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),
                  Text("Garulhos, Brazil"),
                ],
              ),

              // Gira o ícone do avião para a direita
              const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.flight_rounded,
                  size: 48,
                ),
              ),

              Column(
                children: const [
                  Text(
                    "OPO",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),
                  Text("Porto, Portugal"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListView setPasseio() {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pontos Turísticos do Porto",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              // 1. Ponte
              const SizedBox(height: 25),
              const Text(
                "Ponte Dom Luís I",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.network(
                "https://i.imgur.com/JCelTKF.jpg",
                width: 200,
              ),
              const SizedBox(height: 5),
              const Text(
                "A Ponte Dom Luís I, é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia separadas pelo rio Douro.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              
              // 2. Torre
              const SizedBox(height: 25),
              const Text(
                "Torre dos Clérigos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.network(
                "https://i.imgur.com/MGuco6w.jpg",
                width: 200,
              ),
              const SizedBox(height: 5),
              const Text(
                "A Igreja e Torre dos Clérigos, construída entre 1732 e 1763, é um notável conjunto arquitetónico situado na cidade do Porto, sendo considerado um cartão-postal da cidade e integra três elementos principais: a Igreja dos Clérigos, a Torre dos Clérigos e a Casa da Irmandade.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              // 3. Livraria
              const SizedBox(height: 25),
              const Text(
                "Livraria Lello",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.network(
                "https://i.imgur.com/4iml7h5.jpg",
                width: 200,
              ),
              const SizedBox(height: 5),
              const Text(
                "A Livraria Lello situa-se no Centro Histórico da cidade do Porto. Em virtude do seu ímpar valor histórico e artístico, a Lello tem sido reconhecida como uma das mais belas livrarias do mundo por diversas personalidades e entidades. Também considera-se que o lugar inspirou a autora J.K. Rowling para criar a famosa série do Harry Potter.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Image setMapa() {
    return Image.network("https://i.imgur.com/qVbQ7ho.png");
  }
}