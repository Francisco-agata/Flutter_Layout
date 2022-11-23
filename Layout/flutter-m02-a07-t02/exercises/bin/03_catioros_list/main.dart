import 'package:flutter/material.dart';
 
void main() {
  runApp(const CatiorosList());
}
 
class CatiorosList extends StatelessWidget {
  const CatiorosList({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    final nomes = [
      "Dachshund",
      "Golden",
      "Bulldog",
      "Pug",
      "Spaniel",
      "Husky",
      "Border Collie",
      "Beagle",
      "Weimaraner",
      "Dalmata",
    ];
 
    final tabs = [
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/07/31/07/58/dog-2556796_960_720.jpg",
      "https://cdn.pixabay.com/photo/2020/07/20/06/42/english-bulldog-5422018_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/07/07/15/35/puppy-1502565_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/11/11/21/28/puppy-2940583_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/08/05/14/51/dog-2584189_960_720.jpg",
      "https://cdn.pixabay.com/photo/2021/07/06/14/38/border-collie-6391794_960_720.jpg",
      "https://cdn.pixabay.com/photo/2018/12/15/16/01/beagle-3877115_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/02/23/22/34/dog-4016675_960_720.jpg",
    ];
 
    return MaterialApp(
      // Retira o "debug"
      debugShowCheckedModeBanner: false,
 
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Catioros",
              style: TextStyle(fontSize: 32),
            ),
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              isScrollable: true,
              tabs: [
                for (final nome in nomes)
                  Tab(
                    text: nome,
                  )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Image.network(tab),
                )
            ],
          ),
        ),
      ),
    );
  }
}