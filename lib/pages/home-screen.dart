import 'package:flutter/material.dart';

import 'home-page.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        Center(
          child: Text(
            "Inicio",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Explorar",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Pedidos",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Cuenta",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home,
      Icons.search,
      Icons.receipt_rounded,
      Icons.account_circle_rounded,
    ];

    return Container(
      height: 65,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
              icon: Icon(
                items[index],
                size: 30,
                color: activeTab == index ? Colors.black : Colors.grey,
              ),
            );
          }),
        ),
      ),
    );
  }
}
