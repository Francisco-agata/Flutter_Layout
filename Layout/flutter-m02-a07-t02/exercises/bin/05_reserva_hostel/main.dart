import 'package:flutter/material.dart';

void main() {
  runApp(const Hostel());
}

class Hostel extends StatefulWidget {
  const Hostel({Key? key}) : super(key: key);

  @override
  _HostelState createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  final Color cor1 = const Color(0xFF91103B);
  final Color cor4 = const Color(0xFFD65454);
  final Color cor2 = const Color(0xFFE7DEE0);
  final Color cor3 = const Color(0xFFF9F9F9);
  List selecionados = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "ErBienBi - Hospedagens",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 18,
            ),
          ),
          backgroundColor: cor1,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
          color: cor3,
          child: Column(
            children: [
              // Título
              const Text(
                "Selecione as datas da sua reserva",
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              GridView.count(
                // Permite "compartilhar" o espaço com outros widgets
                shrinkWrap: true,

                // Cria o grid com 7 colunas (dias da semana)
                crossAxisCount: 7,

                // Gera 30 itens que exibem os dias do mês
                children: List.generate(30, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // Verifica se já está selecionado
                        index == setSelecionado(selecionados, index)
                            ? selecionados.remove(index) // Remove a seleção
                            : selecionados.add(index); // Adiciona a seleção
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(10),
                      color: index == setSelecionado(selecionados, index)
                          ? cor4
                          : cor2,
                      child: Text(
                        "${index +1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: index == setSelecionado(selecionados, index)
                              ? cor3
                              : cor1,
                        ),  
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),

              // Título
              const Text(
                "Abril 2022",
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int setSelecionado(List selecionados, int index) {
    // Verifica se o index está na lista
    return selecionados.contains(index) ? index : -1;
    // Se sim, retorna o index
    // Senão, retorna -1 (listas iniciam em 0)

    // O mesmo que o código acima
    /*if (selecionados.contains(index)) {
      return index;
    }

    return -1;*/
  }
}