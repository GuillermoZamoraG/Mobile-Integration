import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginSC.dart';

import 'home-page.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 0;
  List regUsuarios = [];

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  void _getUsers() async {
    CollectionReference referencia =
        FirebaseFirestore.instance.collection("sesiones");

    QuerySnapshot usuario = await referencia.get();

    if (usuario.docs.length != 0) {
      for (var doc in usuario.docs) {
        regUsuarios = [doc.data()];
      }
      print(regUsuarios[0]);
    }
  }

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
        HomePage(),
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
            child: ElevatedButton(
                child: Text('Cerrar Sesión'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginSC(),
                    ),
                  );
                })),
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
