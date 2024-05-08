import 'package:flutter/material.dart';
import 'package:act7slider0534/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tab bar Pizzeria Reza",
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffbf5906),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Color(0xfff29569),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Color(0xff050505),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      TabItem(
                        title: "Peperoni",
                        count: 25,
                      ),
                      TabItem(title: "Hawaiana", count: 1),
                      TabItem(title: "Carne", count: 2),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Peperoni",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://images.ecestaticos.com/WJT0BFvdZ4poZa5PiFHuCXX2sTo=/0x0:2121x1414/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F96f%2F563%2Fc84%2F96f563c8404ac8cd97c158887aa56ae1.jpg")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("Id 01"),
                        Text("Pizza Peperoni"),
                        Text("Precio:120mxn"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 160,
                height: 270,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Hawaiana",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://cdn2.cocinadelirante.com/sites/default/files/images/2019/11/como-hacer-pizza-hawaiana.jpg")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("Id 02"),
                        Text("Pizza Hawaiana"),
                        Text("Precio: 135mxn"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 150,
                height: 240,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Carne",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://www.recetaspizzas.com/base/stock/Recipe/88-image/88-image_web.jpg.webp")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("Id 03"),
                        Text("Pizza Carne"),
                        Text("Precio: 110mxn"), //j
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
